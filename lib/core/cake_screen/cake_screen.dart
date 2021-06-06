import 'package:flutter/material.dart';
import 'package:forcakes/core/cake_screen/cake_view.dart';
import 'package:forcakes/core/catalogo/catalogo.dart';

class CakeScreen extends StatelessWidget {
  final Catalogo catalogo;

  const CakeScreen({Key? key, required this.catalogo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCCB39CD0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: CakeView(
        catalogo: catalogo,
      ),
    );
  }
}
