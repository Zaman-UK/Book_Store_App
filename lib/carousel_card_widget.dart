import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final imageUrl;

  const CarouselCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        imageUrl,
        scale: 3,
      ),
    );
  }
}
