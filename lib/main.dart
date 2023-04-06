import 'package:flutter/material.dart';
import 'theme/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: Scaffold(
        backgroundColor: appBgColor,
        body: Center(child: Text('Fleet Travel App')),
      ),
    );
  }
}
