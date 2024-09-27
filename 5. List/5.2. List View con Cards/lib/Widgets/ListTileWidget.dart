import 'package:flutter/material.dart';
import 'package:flutter_widgets/Model/Personaje.dart';

class ListTileWidget extends StatelessWidget {
  Personaje personajes;
  ListTileWidget({super.key, required this.personajes});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(
            personajes.Nombre,
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text(personajes.Poder),
          leading: ClipOval(
          child: Image.asset(
            personajes.Imagen,
            fit: BoxFit.fill,
            width: 60,
          ),
        ),
        trailing: const Icon(Icons.star),
        onTap: () => debugPrint("tap accion!!"),
      ),
    );
  }
}
