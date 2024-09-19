import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context)!.settings.arguments as String; 


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

            Text(message),

            //Boton Pantalla principal
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('Pantalla 1 o /'),
            ),
          ],
        ),
      ),
    );
  }
}
