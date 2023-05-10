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
        child: Column(
          children: [
            Stack(
              children: [
                CustomImage(data["image"], radius: radius, height: 140, width: width),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: IconBox(
                    bgColor: Colors.white,
                    onTap: onFavoriteTap,
                    child: SvgPicture.asset(
                      "assets/icons/heart.svg",
                      color: data["is_favorited"] ? Colors.red : primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
