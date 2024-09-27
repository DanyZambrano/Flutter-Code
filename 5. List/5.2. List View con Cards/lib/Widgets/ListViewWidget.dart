import 'package:flutter/material.dart';
import 'package:flutter_widgets/Model/Personaje.dart';
import 'package:flutter_widgets/Widgets/ListTileWidget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      //physics: const NeverScrollableScrollPhysics(),
      itemCount: personajes.length,
      itemBuilder: (context, index) => ListTileWidget(personajes: personajes[index]),
    );

        /*return  ListView.separated(
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: personajes.length,
      //itemBuilder: (context, index) => ListTileWidget(personajes[index]),
      itemBuilder: (context, index) => ListTileCardWidget(personajes[index]),
    );*/
  }
}
