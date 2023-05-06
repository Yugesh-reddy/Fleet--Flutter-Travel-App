import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_image.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({Key? key, required this.data, this.onTap}) : super(key: key);
  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(data["image"], radius: 15, height: 140, width: 200),
            SizedBox(height: 10),
            Text(data["name"]),
            Text(data["location"]),
          ],
        ),
      ),
    );
  }
}
