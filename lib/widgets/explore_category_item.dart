import 'package:flutter/material.dart';

class ExploreCategoryItem extends StatelessWidget {
  const ExploreCategoryItem({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(data["name"]),
    );
  }
}
