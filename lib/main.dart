import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_coffe/screen/landing_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Ubuntu', primarySwatch: Colors.brown),
        title: 'SB Coffe',
        debugShowCheckedModeBanner: false,
        home: const LandingScreen());
  }
}
