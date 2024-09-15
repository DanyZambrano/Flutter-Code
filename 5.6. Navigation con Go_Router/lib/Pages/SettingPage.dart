import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key, required this.nombre, required this.edad});
  final String nombre;
  final int edad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () { context.pushReplacement(ROUTE_HOME); },
              child: const Text('Home'),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Planeta: $nombre"),
                Text("Edad: $edad"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
