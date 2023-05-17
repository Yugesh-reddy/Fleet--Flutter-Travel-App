import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset("assets/icons/bell.svg"),
    );
  }
}
