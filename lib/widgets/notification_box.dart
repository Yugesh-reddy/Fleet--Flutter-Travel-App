import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;

class NotificationBox extends StatelessWidget {
  const NotificationBox({
    Key? key,
    this.onTap,
    this.notifiedNumber = 0,
  }) : super(key: key);

  final GestureTapCallback? onTap;
  final int notifiedNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: SvgPicture.asset("assets/icons/bell.svg"),
      ),
    );
  }
}
