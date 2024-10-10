import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBarWidget(title: "Perfil"),
      body: Center(
        child: Text('Perfil')
      ),
    );
  }
}
