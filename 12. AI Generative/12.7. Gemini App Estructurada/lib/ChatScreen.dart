import 'package:flutter/material.dart';
import 'package:gemini_character/Widgets/ChatWidget.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.title});

  final String title;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? apiKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.title, style: Theme.of(context).textTheme.titleMedium),
      ),
      body: const ChatWidget(apiKey: "Coloca tu Key!")
    );
  }
}