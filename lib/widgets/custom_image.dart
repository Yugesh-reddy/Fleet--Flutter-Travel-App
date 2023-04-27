import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
    this.image, {
    Key? key,
    this.width = 100,
    this.height = 100,
    this.bgColor,
    this.borderWidth = 0,
    this.borderColor,
    this.trRadius = 0,
    this.tlRadius = 0,
    this.brRadius = 0,
    this.blRadius = 0,
    this.radius = 0,
    this.fit = BoxFit.cover,
    this.isNetwork = true,
  }) : super(key: key);

  final String image;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final double trRadius;
  final double tlRadius;
  final double brRadius;
  final double blRadius;
  final double radius;
  final BoxFit fit;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor ?? Colors.transparent, width: borderWidth),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: isNetwork
            ? Image.network(image, width: width, height: height, fit: fit)
            : Image.asset(image, width: width, height: height, fit: fit),
      ),
    );
  }
}
