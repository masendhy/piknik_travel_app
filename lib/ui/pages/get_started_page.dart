import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/sunset.jpg'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Beautiful Indonesia',
                  style: whiteTextStyle.copyWith(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore beautiful of Indonesia\nand let yourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, right: 120),
                  height: 55,
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: blackColor),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Kunjungi Sekarang',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
