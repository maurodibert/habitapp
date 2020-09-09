import 'package:flutter/material.dart';
import 'package:habitapp/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habitapp',
      home: HomeScreen(),
    );
  }
}
