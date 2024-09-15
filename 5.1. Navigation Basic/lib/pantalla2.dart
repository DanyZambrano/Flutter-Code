import 'package:flutter/material.dart';
import 'package:flutter_widgets/pantalla3.dart';

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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pantalla3()),
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