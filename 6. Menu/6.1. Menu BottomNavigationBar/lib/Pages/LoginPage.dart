import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBarWidget(title: "Login"),
      body: Center(
        child: Text('Login')
      ),
    );
  }
}
