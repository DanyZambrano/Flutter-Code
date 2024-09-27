import 'package:flutter/material.dart';
import 'package:flutter_widgets/Model/Personaje.dart';

typedef VoidCallback = Function(Personaje personajes);

class ListTileWidget extends StatelessWidget {
  Personaje personajes;
  VoidCallback voidCallback;

  ListTileWidget({super.key, required this.personajes, required this.voidCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
        trailing: InkWell(
          onTap: () => voidCallback(personajes),
          child: const Icon(Icons.delete)
        ),
        onTap: () => debugPrint("tap accion!!"),
    );
  }
}
