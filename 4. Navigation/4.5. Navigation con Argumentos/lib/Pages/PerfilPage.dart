import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key, required this.titulo, required this.mensaje});
  final String titulo;
  final String mensaje;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
         title: Text(titulo),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, ROUTE_LOGIN);
              },
              child: const Text('Login'),
            ),

            Text(mensaje),


            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, ROUTE_HOME);
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
