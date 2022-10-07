import 'package:flutter/material.dart';
import 'package:piknik/ui/pages/get_started_page.dart';
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
      },
    );
  }
}
