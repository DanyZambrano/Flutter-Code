import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBarWidget(title: "Setting"),
      body: Center(
        child: Text('Setting')
      ),
    );
  }
}
