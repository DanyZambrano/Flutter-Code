import 'package:flutter/material.dart';

class CardBaseWidget extends StatelessWidget {
  const CardBaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: 400,
        height: 600,
        child: Card(
          color: Colors.blue,
          elevation: 20,
          margin: const EdgeInsets.all(16.0),
          //semanticContainer: true,
          shadowColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: const Center(
            child: Text(
              "Es un Card!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40
              ),
            ),
          ),
        ),
    );
  }
}
