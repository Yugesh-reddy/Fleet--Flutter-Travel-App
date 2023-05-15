import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_image.dart';
import 'package:travel_app/theme/color.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    Key? key,
    required this.data,
    this.onTap,
    this.onFavoriteTap,
  }) : super(key: key);

  final data;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            CustomImage(data["image"], radius: 10, width: 80, height: 80),
          ],
        ),
      ),
    );
  }
}
