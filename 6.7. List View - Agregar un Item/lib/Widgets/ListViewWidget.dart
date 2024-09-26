import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/WidgetsKeys.dart';
import 'package:flutter_widgets/Model/Personaje.dart';
import 'package:flutter_widgets/Widgets/ListTileWidget.dart';

class ListViewWidget extends StatefulWidget {
  ListViewWidget() : super(key: listviewkey);

  @override
  State<ListViewWidget> createState() => ListViewWidgetState();
}

class ListViewWidgetState extends State<ListViewWidget> {
  List<Personaje> misPersonajes = [];

  @override
  void initState() {
    super.initState();
    misPersonajes = personajes;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //physics: const NeverScrollableScrollPhysics(),
      itemCount: personajes.length,
      itemBuilder: (context, index) {
        final personaje = misPersonajes[index];
        return Dismissible(
          background: Container(color: Colors.red),
          direction: DismissDirection.endToStart,
          key: ObjectKey(personaje),
          child: ListTileWidget(personajes: personaje),
          onDismissed: (direction) {
            removeItem(personaje);
          },
        );
      },
    );
  }

  removeItem(Personaje personaje) {
    setState(() {
      misPersonajes.remove(personaje);
    });
  }

  addItem(Personaje personaje) {
    setState(() {
      misPersonajes.add(personaje);
    });
  }
}
