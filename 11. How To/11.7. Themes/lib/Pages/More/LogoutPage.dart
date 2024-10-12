import 'package:flutter/material.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBarWidget(title: "Logout"),
      body: Center(
        child: Text('Logout')
      ),
    );
  }
}
