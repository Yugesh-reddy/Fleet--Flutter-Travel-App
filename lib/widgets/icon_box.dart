import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    Key? key,
    required this.child,
    this.bgColor,
    this.padding = 5,
  }) : super(key: key);

  final Widget child;
  final Color? bgColor;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      color: bgColor,
      child: child,
    );
  }
}
