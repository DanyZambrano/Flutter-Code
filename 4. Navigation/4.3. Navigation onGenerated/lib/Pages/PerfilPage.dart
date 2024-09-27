import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, ROUTE_LOGIN);
              },
              child: const Text('Login'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, ROUTE_HOME);
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
