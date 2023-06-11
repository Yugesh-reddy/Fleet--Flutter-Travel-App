import 'package:flutter/material.dart';
import 'package:travel_app/theme/color.dart';
import 'package:travel_app/utils/data.dart';
import 'package:travel_app/widgets/explore_item.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: explores.length,
              itemBuilder: (context, index) => ExploreItem(data: explores[index]),
            ),
          ],
        ),
      ),
    );
  }
}
