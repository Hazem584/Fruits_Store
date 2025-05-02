
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder:
          (BuildContext context, int itemIndex, int pageViewIndex) =>
          Image.asset(items[itemIndex]),
      options: CarouselOptions(
        height: 170,
        autoPlay: true,
        aspectRatio: 1,
        viewportFraction: 0.6,
        reverse: false,
        autoPlayInterval: Duration(seconds: 4),
        autoPlayAnimationDuration: Duration(seconds: 2),
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}