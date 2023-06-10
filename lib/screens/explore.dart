import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/theme/color.dart';
import 'package:travel_app/utils/data.dart';
import 'package:travel_app/widgets/explore_category_item.dart';
import 'package:travel_app/widgets/round_textbox.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
            Text("Find your best
destination", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: primary)),
            SizedBox(height: 20),
            Container(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: exploreCategories.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(right: 10),
                  child: ExploreCategoryItem(
                    data: exploreCategories[index],
                    bgColor: selectedCategory == index ? primary : Colors.white,
                    color: selectedCategory == index ? Colors.white : primary,
                    onTap: () => setState(() => selectedCategory = index),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
