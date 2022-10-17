import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class PhotosItem extends StatelessWidget {
  final String imageUrl;

  const PhotosItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: defaultMargin),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(defaultRadius)));
  }
}
