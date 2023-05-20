import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem(this.icon, {Key? key}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(icon),
    );
  }
}
