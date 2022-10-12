import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/widgets/custom_button.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
          width: 300,
          height: 211,
          padding: EdgeInsets.all(defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: blackColor),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nama',
                            style: whiteTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                overflow: TextOverflow.ellipsis)),
                        Text(
                          'John Due',
                          style: whiteTextStyle.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.flight,
                        color: whiteColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Saldo',
              style: whiteTextStyle.copyWith(fontSize: 20),
            ),
            Text(
              'IDR 180.000.000',
              style: whiteTextStyle.copyWith(
                  fontSize: 26, fontWeight: FontWeight.w800),
            ),
          ]));
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bonus Poin',
              style: blackTextStyle.copyWith(
                  fontSize: 32, fontWeight: FontWeight.w700),
            ),
            Icon(
              Icons.celebration,
              size: 32,
            )
          ],
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hore.. anda mendapatkan poin.\n Anda menukarkannya\ndengan tiket penerbangan.',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget startButton() {
      return Container(
          margin: EdgeInsets.only(top: 80),
          child: CustomButton(
              title: 'Cari Penerbangan',
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              }));

      // Container(
      //     margin: EdgeInsets.only(top: 80),
      //     width: 220,
      //     height: 55,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(defaultRadius),
      //         color: blackColor),
      //     child: TextButton(
      //       child: Text(
      //         'Cari Penerbangan',
      //         style: whiteTextStyle.copyWith(fontSize: 18),
      //       ),
      //       onPressed: () {
      //         Navigator.pushNamed(context, '/main');
      //       },
      //     ));
    }

    return Scaffold(
      backgroundColor: backgorundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [bonusCard(), title(), subtitle(), startButton()],
      )),
    );
  }
}
