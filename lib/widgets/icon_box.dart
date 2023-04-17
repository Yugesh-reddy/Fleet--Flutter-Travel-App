import 'package:flutter/material.dart';
import 'package:travel_app/theme/color.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    Key? key,
    required this.child,
    this.bgColor,
    this.onTap,
    this.borderColor = Colors.transparent,
    this.radius = 50,
    this.padding = 5,
  }) : super(key: key);

  final Widget child;
  final Color? bgColor;
  final Color borderColor;
  final GestureTapCallback? onTap;
  final double radius;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor),
      ),
      child: child,
    );
  }
}
