import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem(
    this.icon, {
    Key? key,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final bool isActive;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: SvgPicture.asset(
          icon,
          color: isActive ? primary : inActiveColor,
        ),
      ),
    );
  }
}
