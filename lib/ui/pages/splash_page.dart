import 'dart:async';

import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';
import 'package:piknik/ui/pages/get_started_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement setState
    Timer(Duration(seconds: 3), () {
      // Navigator.push(
      //   context, MaterialPageRoute(builder: (context) => GetStarted()));
// dapat juga dengan menggunakan routes

      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 200,
            height: 200,
            child: Icon(
              Icons.airplane_ticket,
              size: 200,
              color: whiteColor,
            ),
          ),
          Text(
            'PIKNIK',
            style: whiteTextStyle.copyWith(
                fontSize: 50, fontWeight: FontWeight.w500, letterSpacing: 10),
          )
        ]),
      ),
    );
  }
}
