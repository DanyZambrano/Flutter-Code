import 'package:flutter/material.dart';
import 'package:flutter_widgets/Pages/HomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter + Gemini',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
