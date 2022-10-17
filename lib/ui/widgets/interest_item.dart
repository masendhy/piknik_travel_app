import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String item;

  const InterestItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            Icons.task_alt,
            color: blackColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            item,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
