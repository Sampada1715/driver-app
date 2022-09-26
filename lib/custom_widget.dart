import 'package:flutter/material.dart';
class HeroImage extends StatelessWidget {
  final String img;
  final double imgHeight;
  HeroImage(
      {required this.img, required this.imgHeight}
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgHeight,
      child: Image.asset(img),
    );
  }
}
