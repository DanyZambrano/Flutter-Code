import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Card Elevado')),
          ),
        ),

        Card.outlined(
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Card outlined')),
          ),
        ),

        Card.filled(
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Card filled')),
          ),
        ),

      ],
    );
  }
}
