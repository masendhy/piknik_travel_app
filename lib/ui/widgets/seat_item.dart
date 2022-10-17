import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class SeatItem extends StatelessWidget {
// NOTE : 0 = available, 1 = selected, 2=unavailable

  final int status;

  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgorundColor() {
      switch (status) {
        case 0:
          return availablekColor;
        case 1:
          return blackColor;
        case 2:
          return greyColor;
        default:
          return greyColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return blackColor;
        case 1:
          return blackColor;
        case 2:
          return greyColor;
        default:
          return greyColor;
      }
    }

    childText() {
      switch (status) {
        case 0:
          return Center(child: SizedBox());
        case 1:
          return Center(
              child: Text('YOU',
                  style: whiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w700)));
        case 2:
          return Center(child: SizedBox());
        default:
          return Center(child: SizedBox());
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: backgorundColor(),
          borderRadius: BorderRadius.circular(defaultRadius),
          border: Border.all(color: borderColor(), width: 2)),
      child: childText(),
    );
  }
}
