import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {context.pushReplacement(ROUTE_HOME);  },
              child: const Text('Home'),
            ),
            ElevatedButton(
              onPressed: () { context.pushReplacement("$ROUTE_PERFIL/un dato"); },
              child: const Text('Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
