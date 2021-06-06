import 'package:flutter/material.dart';
import 'package:forcakes/core/catalogo/catalogo.dart';
import 'package:forcakes/core/catalogo/item_card.dart';
import 'package:forcakes/core/slide/slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  //final geraLista = List.generate(20, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("FORCAKES"),
        ),
        backgroundColor: Color(0xffB39CD0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 50),
          CustomSlide(),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsetsDirectional.only(start: 10),
            child: Text("Mais pesquisados...",
                style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(
                        fontSize: 20,
                        color: Color(0xffB39CD0),
                        fontWeight: FontWeight.bold))),
          ),
          SizedBox(height: 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: catalogo.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.80,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemBuilder: (context, index) => ItemCard(
                  catalogo: catalogo[index],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffFBEAFF),
    );
  }
}
