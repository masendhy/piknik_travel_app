import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/pages/sign_up_page.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/widgets/custom_button.dart';

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
                  'Panorama Indonesia',
                  style: whiteTextStyle.copyWith(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Jelajahi  keindahan Indonesia dan dapatkan\npengalaman yang luar biasa',
                  style: whiteTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 50, right: 120),
                //   height: 55,
                //   width: 220,
                //   child: TextButton(
                //       onPressed: () {
                //         Navigator.pushNamed(context, '/sign-up');
                //       },
                //       style: TextButton.styleFrom(
                //           backgroundColor: blackColor,
                //           shape: RoundedRectangleBorder(
                //               borderRadius:
                //                   BorderRadius.circular(defaultRadius))),
                //       child: Text(
                //         'Jelajahi ',
                //         style: whiteTextStyle.copyWith(fontSize: 18),
                //       )),
                // ),

                CustomButton(
                  title: 'Jelajahi Sekarang',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
