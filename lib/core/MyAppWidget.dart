import 'package:flutter/material.dart';
import 'package:forcakes/core/homepage.dart';

class MyAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const corPadrao = const Color(0xffB39CD0);
    return MaterialApp(
      theme: ThemeData(backgroundColor: corPadrao),
      home: HomePage(),
    );
  }
}
