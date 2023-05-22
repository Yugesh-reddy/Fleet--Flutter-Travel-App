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
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            color: isActive ? primary : inActiveColor,
          ),
          SizedBox(height: 5),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isActive ? 20 : 0,
            height: 3,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
