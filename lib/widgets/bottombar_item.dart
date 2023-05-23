import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem(
    this.icon, {
    Key? key,
    this.isActive = false,
    this.activeColor = primary,
    this.color = inActiveColor,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final bool isActive;
  final Color activeColor;
  final Color color;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: isActive ? activeColor : color,
            width: 26,
            height: 26,
          ),
        ],
      ),
    );
  }
}
