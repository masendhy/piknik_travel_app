import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class CustomButton extends StatelessWidget {
  //const CustomButton({super.key});

  final String title;
  final double width;
  final Function() onPressed;

  CustomButton(
      {required this.title, this.width = 220, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: blackColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 18),
          )),
    );
  }
}
