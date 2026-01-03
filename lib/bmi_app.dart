import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1C2135),
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
      ),

      home: HomeScreen(),
    );
  }
}
