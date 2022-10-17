import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:piknik/core.dart';
import 'package:piknik/ui/pages/success_checkout.dart';
import 'package:piknik/ui/widgets/custom_button.dart';
import 'package:piknik/ui/widgets/destination_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class CheckOut extends StatelessWidget {
  final Uri _url =
      Uri.parse('https://masendhy.gitbook.io/syarat-dan-ketentuan/');

  CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        width: double.infinity,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 292,
                height: 65,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/flight-route.png')))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'SOC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Solo',
                      style: greyTextStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'LOP',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Lombok',
                      style: greyTextStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        padding: EdgeInsets.only(
            left: defaultMargin / 2,
            bottom: defaultMargin,
            right: defaultMargin / 2),
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DestinationTile(
              name: 'Gunung Rinjani',
              city: 'Nusa Tenggara Barat',
              rating: '4.8',
              imageUrl: 'assets/rinjani.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Detail Penerbangan',
              style: blackTextStyle.copyWith(
                  fontSize: 17, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.task_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Penumpang',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Spacer(),
                Text(
                  '2 Orang',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.task_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Tempat Duduk',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'A3,B3',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.task_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Asuransi',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'Tidak',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: redColor),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.task_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Dapat dibatalkan',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'Ya',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: greenColor),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.task_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'VAT',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Spacer(),
                Text(
                  '45%',
                  style: blackTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.task_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Harga',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'IDR 8.500.000',
                  style: blackTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.task_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Total Harga',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Spacer(),
                Text(
                  'IDR 12.000.000',
                  style: blackTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: whiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style: blackTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: 120,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      color: blackColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.flight,
                        color: whiteColor,
                        size: 40,
                      ),
                      Spacer(),
                      Text(
                        'Bayar',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.000.000',
                        style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w700),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Saldo Anda',
                        style: greyTextStyle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget paymentButton() {
      return Column(
        children: [
          CustomButton(
            title: 'Bayar Sekarang',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SuccessCheckout()));
            },
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50, top: 20),
            child: RichText(
                text: TextSpan(
                    text: 'Syarat dan Ketentuan',
                    style: greyTextStyle.copyWith(
                        fontSize: 15, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        if (await canLaunchUrl(_url)) {
                          await launchUrl(_url);
                        } else {
                          throw ' Cannot load Url';
                        }
                      })),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgorundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              route(),
              bookingDetails(),
              paymentDetails(),
              paymentButton()
            ],
          ),
        ),
      ),
    );
  }
}
