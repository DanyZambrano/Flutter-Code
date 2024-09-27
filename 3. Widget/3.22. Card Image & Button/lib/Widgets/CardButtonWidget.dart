import 'package:flutter/material.dart';

class CardButtonWidget extends StatelessWidget {
  const CardButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {

    var fecha = '1990';
    var raza = 'Raza Perfecta!';
    var imagen = Image.asset(
      'assets/images/dog.jpg',
      fit: BoxFit.cover,
    );
    var comentario = 'Excelente compañia, compañero fiel :)';


    return Card(
      elevation: 10.0,
      child: Column(
        children: [
          ListTile(
            title: Text(fecha),
            subtitle: Text(raza),
            trailing: const Icon(Icons.favorite_outline),
          ),

          Container(
            height: 200,
            child: imagen,
          ),

          Container(
            padding: const EdgeInsets.all(16),
            //alignment: Alignment.centerLeft,
            child: Text(comentario),
          ),       

          ButtonBar(
            children: [
              TextButton(
                onPressed: () { }, 
                child: const Text('Escribir'),
              ),
              TextButton(
                onPressed: () { }, 
                child: const Text('Lamar'),
              ),
            ],
          ) 
        ],
      ),
    );
  }
}