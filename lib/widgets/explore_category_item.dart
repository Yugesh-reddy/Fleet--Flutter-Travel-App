import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';

class ExploreCategoryItem extends StatelessWidget {
  const ExploreCategoryItem({
    Key? key,
    required this.data,
    this.onTap,
  }) : super(key: key);

  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            SvgPicture.asset(data["icon"]),
            SizedBox(width: 8),
            Text(data["name"]),
          ],
        ),
      ),
    );
  }
}
