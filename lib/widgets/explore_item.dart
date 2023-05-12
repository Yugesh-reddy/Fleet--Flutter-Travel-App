import 'package:flutter/material.dart';
import 'custom_image.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomImage(data["image"]),
    );
  }
}
