import 'package:flutter/material.dart';

class MyAppTheme {
  static List<ThemeData> themes = [
    ThemeData(
        primaryColor: Colors.teal,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22, color: Colors.teal),
          bodyLarge: TextStyle(fontSize: 32, color: Colors.teal),
          bodySmall: TextStyle(fontSize: 18, color: Colors.teal),
        ),
        iconTheme: const IconThemeData(color: Colors.teal, size: 30)),
    ThemeData(
        primaryColor: Colors.deepOrange,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22, color: Colors.teal),
          bodyLarge: TextStyle(fontSize: 32, color: Colors.teal),
          bodySmall: TextStyle(fontSize: 18, color: Colors.teal),
        ),
        iconTheme: const IconThemeData(color: Colors.teal, size: 30)),
  ];
}
