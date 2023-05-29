import 'package:flutter/material.dart';
import 'package:travel_app/theme/color.dart';
import 'package:travel_app/widgets/bottombar_item.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      bottomNavigationBar: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: bottomBarColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomBarItem("assets/icons/home.svg", isActive: activeTab == 0, onTap: () => setState(() => activeTab = 0)),
            BottomBarItem("assets/icons/search.svg", isActive: activeTab == 1, onTap: () => setState(() => activeTab = 1)),
            BottomBarItem("assets/icons/heart.svg", isActive: activeTab == 2, onTap: () => setState(() => activeTab = 2)),
            BottomBarItem("assets/icons/setting.svg", isActive: activeTab == 3, onTap: () => setState(() => activeTab = 3)),
          ],
        ),
      ),
      body: Center(child: Text("Active Tab: $activeTab")),
    );
  }
}
