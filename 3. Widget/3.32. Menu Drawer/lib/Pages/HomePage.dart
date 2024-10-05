import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBarWidget(title: "Home"),
      body: SafeArea(
        child: Center(
          child: Text('Home')
        )
      ),
    );
  }
}
