import 'package:flutter/material.dart';
import '../../utils/env.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Ambiente: ${EnvConfig.baseurl}',
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "Roboto"
            ),
          ),
        ),
      ),
    );
  }
}

