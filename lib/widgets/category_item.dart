import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.data,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  final data;
  final bool isSelected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isSelected ? primary : cardColor,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              data["icon"],
              color: isSelected ? Colors.white : darker,
              width: 25,
              height: 25,
            ),
          ),
          SizedBox(height: 5),
          Text(data["name"]),
        ],
      ),
    );
  }
}
