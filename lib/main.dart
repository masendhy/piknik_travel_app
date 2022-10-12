import 'package:flutter/material.dart';
import 'package:piknik/ui/pages/bonus_page.dart';
import 'package:piknik/ui/pages/get_started_page.dart';
import 'package:piknik/ui/pages/main_page.dart';
import 'package:piknik/ui/pages/sign_up_page.dart';
import 'package:piknik/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashPage(),
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => SignUp(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
