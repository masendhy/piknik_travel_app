import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String rating;
  final String imageUrl;

  DestinationTile(
      {required this.name,
      required this.city,
      required this.rating,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: whiteColor),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imageUrl))),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis),
              ),
              Text(
                city,
                style: greyTextStyle.copyWith(overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              rating,
              style: blackTextStyle.copyWith(fontWeight: FontWeight.w700),
            )
          ],
        )
      ]),
    );
  }
}
