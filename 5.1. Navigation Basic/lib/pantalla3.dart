import 'package:flutter/material.dart';
import 'package:flutter_widgets/main.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Boton Pantalla Anterior
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla 2'),
            ),

            //Boton Pantalla principal
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MainApp()));
              },
              child: const Text('Pantalla 1'),
            ),
          ],
        ),
      ),
    );
  }
}
