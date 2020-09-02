import 'package:flutter/material.dart';
import 'package:flutter_app_qrcode/homepage.dart';
//Kodless.net 30.08.2020
//Mert Can Kıyak
//Not: Orta saha halen gelmedi.
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}
