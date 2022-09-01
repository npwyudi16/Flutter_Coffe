import 'package:flutter/material.dart';
import 'package:flutter_coffe/screen/home_screen.dart';
import 'package:flutter_coffe/screen/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Ubuntu'
      ),
      title: 'SB Coffe',
      debugShowCheckedModeBanner: false,
      initialRoute: LandingScreen.namedRoute,
      routes: {
        LandingScreen.namedRoute: (context) => const LandingScreen(),
        HomeScreen.namedRoute: (context) => const HomeScreen(),
      },
    );
  }
}
