import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            body: SafeArea(
                child: Stack(
                 // alignment:  Alignment.center,
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
              ),
            ),
        );
  }

}
