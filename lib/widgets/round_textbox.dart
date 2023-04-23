import 'package:flutter/material.dart';
import 'package:travel_app/theme/color.dart';

class RoundTextBox extends StatelessWidget {
  const RoundTextBox({
    Key? key,
    this.hintText = "",
    this.prefixIcon,
    this.controller,
  }) : super(key: key);

  final String hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: textBoxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ),
    );
  }
}
