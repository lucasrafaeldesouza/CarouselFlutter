import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Slider App"),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.8,
            height: 550.0,
            autoPlay: true,
          ),
          items: ["images/flutter.png", "images/react.png", "images/vue.png"]
              .map((e) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 400.0,
                  child: Image.asset(
                    e,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
