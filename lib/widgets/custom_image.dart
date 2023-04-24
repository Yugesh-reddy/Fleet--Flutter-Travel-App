import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
    this.image, {
    Key? key,
    this.width = 100,
    this.height = 100,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  final String image;
  final double width;
  final double height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
