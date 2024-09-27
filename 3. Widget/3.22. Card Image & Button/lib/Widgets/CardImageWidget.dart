import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  const CardImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        side: const BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
      elevation: 20,
      margin: const EdgeInsets.all(10),
      child: Image.asset(
        'assets/images/game.jpg',
        fit: BoxFit.cover
        ),
    );
  }
}
