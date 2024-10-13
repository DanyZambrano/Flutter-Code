import 'package:flutter/material.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBarWidget(title: "Language"),
      body: Center(
        child: Text('Language')
      ),
    );
  }
}
