import 'package:flutter/material.dart';
import 'package:flutter_widgets/Model/Personaje.dart';
import 'package:flutter_widgets/Widgets/ListTileWidget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //physics: const NeverScrollableScrollPhysics(),
      itemCount: personajes.length,
      itemBuilder: (context, index) {
        final item = personajes[index];
        return Dismissible(
          //direction: DismissDirection.endToStart,
          key: Key(item.Nombre),
          background: Container(color: Colors.red),
          child: ListTileWidget(personajes: personajes[index]),
        );
      },
    );
  }
}
