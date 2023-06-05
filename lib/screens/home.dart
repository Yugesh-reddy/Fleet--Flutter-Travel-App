import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';
import 'package:travel_app/utils/data.dart';
import 'package:travel_app/widgets/category_item.dart';
import 'package:travel_app/widgets/icon_box.dart';
import 'package:travel_app/widgets/notification_box.dart';
import 'package:travel_app/widgets/round_textbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategory = 0;

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
            Row(
              children: [
                Expanded(
                  child: RoundTextBox(
                    hintText: "Search...",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset("assets/icons/search.svg", color: darker),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconBox(
                  bgColor: primary,
                  radius: 10,
                  padding: 11,
                  child: SvgPicture.asset("assets/icons/filter.svg", color: Colors.white, width: 18, height: 18),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primary)),
                Text("See all", style: TextStyle(fontSize: 14, color: darker)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
