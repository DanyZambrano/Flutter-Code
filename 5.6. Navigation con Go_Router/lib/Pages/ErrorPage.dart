import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:go_router/go_router.dart';

class Errorpage extends StatelessWidget {
  const Errorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("ERROR PAGE"),
            ElevatedButton(
              onPressed: () { context.go(ROUTE_HOME); },
              child: const Text('Ir al inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
