import 'package:flutter/material.dart';
import 'package:fourps_app/views/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
