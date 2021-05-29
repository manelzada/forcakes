import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:forcakes/core/slide/list_slider.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: imgList,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
        ),
      )
    ]);
  }
}
