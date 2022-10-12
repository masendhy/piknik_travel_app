import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class CustomNavButton extends StatelessWidget {
  final Widget? iconUrl;
  final bool isSelected;

  const CustomNavButton({
    this.iconUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(width: 24, height: 24, child: (iconUrl)),
        Container(
          margin: EdgeInsets.only(left: 10),
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? blackColor : Colors.transparent,
              borderRadius: BorderRadius.circular(defaultRadius)),
        ),
      ],
    );
  }
}
