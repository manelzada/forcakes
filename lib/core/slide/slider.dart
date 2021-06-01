import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:forcakes/core/slide/list_slider.dart';

class CustomSlide extends StatefulWidget {
  @override
  _CustomSlideState createState() => _CustomSlideState();
}

class _CustomSlideState extends State<CustomSlide> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(clipBehavior: Clip.none, children: [
        Container(
          height: 135,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xffB39CD0),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          left: 75,
          bottom: -43,
          child: SizedBox(
            height: 250,
            width: 350,
            child: CarouselSlider(
              items: imgList,
              options: CarouselOptions(
                autoPlay: true,
                //aspectRatio: 16 / 9,
                //viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                },
              ),
            ),
          ),
        )
      ]),
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
                color: current == index ? Color(0xffB39CD0) : Color(0xCCB39CD0),
              ),
            );
          },
        ).toList(),
      )
    ]);
  }
}
