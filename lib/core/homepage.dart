import 'package:flutter/material.dart';
import 'package:forcakes/core/catalogo.dart';
import 'package:forcakes/core/item_card.dart';
import 'package:forcakes/core/slide/slider.dart';

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
                itemBuilder: (context, index) => ItemCard(),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffFBEAFF),
    );
  }
}
