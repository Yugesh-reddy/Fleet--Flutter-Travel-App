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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
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
