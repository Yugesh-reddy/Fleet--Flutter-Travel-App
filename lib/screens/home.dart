import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';
import 'package:travel_app/utils/data.dart';
import 'package:travel_app/widgets/notification_box.dart';
import 'package:travel_app/widgets/round_textbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello,", style: TextStyle(color: darker, fontSize: 14)),
                    Text(profile["name"] as String, style: TextStyle(color: primary, fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                NotificationBox(notifiedNumber: 1),
              ],
            ),
            SizedBox(height: 20),
            RoundTextBox(
              hintText: "Search destinations...",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset("assets/icons/search.svg", color: darker),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
