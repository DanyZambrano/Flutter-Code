import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/WidgetsKeys.dart';
import 'package:flutter_widgets/Model/Personaje.dart';
import 'package:flutter_widgets/Widgets/ListViewWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          listviewkey.currentState?.addItem(
            Personaje(
              Nombre: "Flash",
              Poder: "Velocidad",
              Edad: "30",
              Imagen: "assets/images/flash.png"
            ),
          ),
        },
        child: const Icon(Icons.add),
        ),
      body: SafeArea(
        child: 
            ListViewWidget(),
        )
    );
  }
}
