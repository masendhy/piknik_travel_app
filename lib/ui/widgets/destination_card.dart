import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/pages/detail_page.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String rating;
  final String imageUrl;

  DestinationCard(
      {required this.name,
      required this.city,
      required this.rating,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        margin: EdgeInsets.only(left: defaultMargin),
        padding: EdgeInsets.all(defaultMargin),
        width: 200,
        height: 325,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: whiteColor),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(image: AssetImage(imageUrl))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(defaultRadius)),
                      color: whiteColor),
                  height: 30,
                  width: 55,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 24.0,
                          color: Colors.amber,
                        ),
                        Text(rating,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis),
                ),
                Text(city,
                    style: greyTextStyle, overflow: TextOverflow.ellipsis),
              ],
            )
          ],
        ),
      ),
    );
  }
}
