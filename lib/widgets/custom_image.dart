import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(this.image, {Key? key}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image);
  }
}
