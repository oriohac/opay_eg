import 'package:flutter/material.dart';
import 'package:opay_eg/home.dart';
import 'package:opay_eg/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 7)),
        builder: (context, timer) => timer.connectionState == ConnectionState.done 
        ? Home() 
        : Splash(),
      ),
    );
  }
}
