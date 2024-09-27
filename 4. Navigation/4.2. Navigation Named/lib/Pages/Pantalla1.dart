import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1'),
      ),
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Boton Pantalla Anterior
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Pantalla2");
              },
              child: const Text('Pantalla 2'),
            ),
          ],
        ),
      )),
    );
  }
}
