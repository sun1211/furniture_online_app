import 'package:flutter/material.dart';
import 'package:furniture_online_app/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture app',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
