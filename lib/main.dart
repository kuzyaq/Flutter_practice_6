import 'package:flutter/material.dart';
import 'screens/image_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа №6',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageScreen(),
    );
  }
}