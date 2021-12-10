import 'package:app2_grid_rashi/home.dart';
import 'package:app2_grid_rashi/splash.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      home: SplashScreen(),
      
    );
  }
}