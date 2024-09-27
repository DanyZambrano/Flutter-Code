import 'package:flutter/material.dart';

class Stack_Widget extends StatelessWidget {
  const Stack_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [
          Image(image: AssetImage("assets/images/dog.jpg")),
          Positioned(
            right: 10,
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 70,
            ),
          ),
        ],
    );
  }
}
