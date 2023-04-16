import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
