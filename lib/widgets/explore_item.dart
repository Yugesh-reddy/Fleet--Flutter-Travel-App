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
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CustomImage(data["image"], radius: 10, width: 80, height: 80),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data["name"]),
                  Text(data["price"]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
