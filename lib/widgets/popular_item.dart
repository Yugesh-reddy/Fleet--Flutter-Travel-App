import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_image.dart';
import 'package:travel_app/theme/color.dart';

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
            Stack(
              children: [
                CustomImage(data["image"], radius: 15, height: 140, width: 200),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(data["price"], style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(data["name"]),
            Row(
              children: [
                SvgPicture.asset("assets/icons/star.svg", width: 14, height: 14),
                SizedBox(width: 4),
                Text(data["rate"]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
