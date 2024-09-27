import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: const Text(
        "Curso Flutter MasterClass",
        style: TextStyle(fontSize: 20),
      ),
      subtitle: const Text("por Dany Zambrano"),
      trailing: const Icon(Icons.more_vert_rounded),
      leading: const Icon(Icons.heat_pump_rounded),
      onTap: () {},
      onLongPress: () {},
      
    );
  }
}
