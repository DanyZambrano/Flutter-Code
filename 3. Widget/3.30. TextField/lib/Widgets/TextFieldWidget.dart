import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => TextFieldWidgetState();
}

class TextFieldWidgetState extends State<TextFieldWidget> {

  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlNotes = TextEditingController();
  TextEditingController ctrlPost = TextEditingController();
  TextEditingController ctrlBlog = TextEditingController();
  TextEditingController ctrlNews = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        TextField(
          autofocus: true,
          keyboardType: TextInputType.name,
          textAlign: TextAlign.left,
          style: const TextStyle(color: Colors.green),
          maxLength: 10,
          controller: ctrlName,
          onChanged: (text) {
            debugPrint('salida: $text (${text.characters.length})');
          },
        ),
        TextField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.blue),
          controller: ctrlEmail,
        ),
        TextField(
          autofocus: true,
          keyboardType: TextInputType.multiline,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.blue),
          maxLength: 120,
          maxLines: 3,
          controller: ctrlNotes,
        ),
         TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.blue),
          decoration: const InputDecoration (
            hintText: "Introduce unas palabras",
            hintStyle: TextStyle(color: Colors.red),
            labelText: "Post",
            icon: Icon(Icons.task_alt),
          ),
          controller: ctrlPost,
        ),
        TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.blue),
          decoration: const InputDecoration (
            hintText: "Escribe algo",
            hintStyle: TextStyle(color: Colors.blue),
            labelText: "Blog",
            prefix: Icon(Icons.read_more),
          ),
          controller: ctrlBlog,
        ),
        TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.blue),
          decoration: const InputDecoration (
            labelText: "News",
            prefixIcon: Icon(Icons.calculate),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 2
              ),
            ),
          ),
          controller: ctrlNews,
        ),
      ],
    );
  }
}
