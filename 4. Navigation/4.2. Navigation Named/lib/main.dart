import 'package:flutter/material.dart';
import 'package:flutter_widgets/Pages/pantalla1.dart';
import 'package:flutter_widgets/Pages/pantalla2.dart';
import 'package:flutter_widgets/Pages/pantalla3.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/Pantalla2': (context) => const Pantalla2(),
        '/Pantalla3': (context) => const Pantalla3(),
      },
      home: const Pantalla1(),
    );
  }
}
