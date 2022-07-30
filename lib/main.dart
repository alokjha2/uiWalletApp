import 'package:flutter/material.dart';
import 'package:uiwalletapp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // backgroundColor: kBackgroundColor,
        primaryColor: Color(0xFF0C9869),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: 
      HomeScreen(),
    );
  }
}



