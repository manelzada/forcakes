import 'package:flutter/material.dart';
import 'package:forcakes/core/slide/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("FORCAKES")),
        backgroundColor: Color(0xffB39CD0),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(height: 30),
          Dashboard(),
        ],
      ),
      backgroundColor: Color(0xffFBEAFF),
    );
  }
}
