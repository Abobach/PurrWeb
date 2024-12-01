import 'package:flutter/material.dart';
import 'package:market/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
     theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
    ),
  );
}
