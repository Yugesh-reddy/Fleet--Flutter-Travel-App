import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';
import 'package:travel_app/utils/data.dart';
import 'package:travel_app/widgets/category_item.dart';
import 'package:travel_app/widgets/icon_box.dart';
import 'package:travel_app/widgets/notification_box.dart';
import 'package:travel_app/widgets/popular_item.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primary)),
                Text("See all", style: TextStyle(fontSize: 14, color: darker)),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 290,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: populars.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(right: 15),
                  child: PopularItem(data: populars[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
