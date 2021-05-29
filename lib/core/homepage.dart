import 'package:flutter/material.dart';
import 'package:forcakes/core/slide/custom_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("FORCAKES"),
        ),
        backgroundColor: Color(0xffB39CD0),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(height: 50),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 135,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xffB39CD0),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                left: 55,
                bottom: -25,
                child: CustomSlider(),
              )
              //Positioned(left: 50, top: -59, child: Dashboard()),
            ],
            clipBehavior: Clip.none,
          ),
        ]),
      ),
      backgroundColor: Color(0xffFBEAFF),
    );
  }
}

/* 
CarouselSlider(
        items: imgList,
        options: CarouselOptions(
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map(
          (image) {
            int index = imgList.indexOf(image);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color(0xffB39CD0)
                      : Color(0xCCB39CD0)),
            );
          },
        ).toList(), // this was the part the I had to add
      )
*/
