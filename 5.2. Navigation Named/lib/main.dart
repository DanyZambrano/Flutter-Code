import 'package:flutter/material.dart';
import 'package:flutter_widgets/pantalla1.dart';
import 'package:flutter_widgets/pantalla2.dart';
import 'package:flutter_widgets/pantalla3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
        routes: {
          '/pantalla2': (context) => const Pantalla2(),
          '/pantalla3': (context) => const Pantalla3(),
        },
      home: const Pantalla1(),
    );
  }
}
