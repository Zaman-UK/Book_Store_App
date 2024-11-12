import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:testing/carousel_card_widget.dart';

class CarouselSliderPage extends StatelessWidget {
  List<String> carouselImageItems = [
    'Assets/card.png',
  ];

  CarouselSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: carouselImageItems.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return CarouselCard(imageUrl: item);
            },
          );
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
        ));
  }
}
