import 'package:flutter/material.dart';
import 'package:forcakes/core/catalogo/catalogo.dart';
import 'package:google_fonts/google_fonts.dart';

class CakeView extends StatelessWidget {
  final Catalogo catalogo;
  const CakeView({Key? key, required this.catalogo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * .4),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        width: 250,
                        child: Image.asset(catalogo.imagem),
                      ),
                    ),
                    Text(
                      catalogo.nome,
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Color(0xCCB39CD0),
                          fontSize: 30),
                    ),
                    Text(catalogo.desc),
                    SizedBox(height: 30),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 75,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Color(0xCCB39CD0),
                              borderRadius: BorderRadius.circular(24)),
                          child: Center(
                            child: Text(
                              "FAZER",
                              style: GoogleFonts.robotoMono(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
