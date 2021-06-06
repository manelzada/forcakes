import 'package:flutter/material.dart';
import 'package:forcakes/core/catalogo/catalogo.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  final Catalogo catalogo;
  //ItemCard({})
  const ItemCard({Key? key, required this.catalogo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 210,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xCCB39CD0),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 200,
                  width: 150,
                  child: Image.asset(catalogo.imagem),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    catalogo.nome,
                    style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xffFBEAFF),
                      ),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
