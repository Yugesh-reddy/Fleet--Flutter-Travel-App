import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_image.dart';
import 'icon_box.dart';
import 'package:travel_app/theme/color.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    Key? key,
    required this.data,
    this.width = 200,
    this.height = 300,
    this.radius = 15,
    this.onTap,
    this.onFavoriteTap,
  }) : super(key: key);

  final data;
  final double width;
  final double height;
  final double radius;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(data["image"], radius: radius, height: 140, width: width),
          ],
        ),
      ),
    );
  }
}
