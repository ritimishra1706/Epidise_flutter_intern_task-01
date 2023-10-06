import 'package:digicare/modules/home_page.dart';
import 'package:digicare/modules/welcome_page.dart';
//import 'package:digicare/modules/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
