import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2'),
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
              child: const Text('Pantalla 1'),
            ),

            //Boton Pantalla siguiente
            ElevatedButton(
              onPressed: () {
                 Navigator.pushNamed(
                  context, "/Pantalla3",
                  arguments: "Dataxx",
                  );
              },
              child: const Text('Pantalla 3'),
            ),
          ],
        ),
      ),
    );
  }
}
