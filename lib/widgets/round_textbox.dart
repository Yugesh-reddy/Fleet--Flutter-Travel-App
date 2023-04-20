import 'package:flutter/material.dart';

class RoundTextBox extends StatelessWidget {
  const RoundTextBox({
    Key? key,
    this.hintText = "",
    this.prefixIcon,
  }) : super(key: key);

  final String hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
        ),
      ),
    );
  }
}
