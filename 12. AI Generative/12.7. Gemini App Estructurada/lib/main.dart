
import 'package:flutter/material.dart';
import 'package:gemini_character/ChatScreen.dart';

void main() {
  runApp(const GenerativeAISample());
}

class GenerativeAISample extends StatelessWidget {
  const GenerativeAISample({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Generador de Personajes',
      home:  ChatScreen(title: 'Generador de Personajes'),
    );
  }
}

