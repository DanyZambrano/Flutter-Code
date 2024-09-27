import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:go_router/go_router.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key, required this.userId});
  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () { context.pushReplacement(ROUTE_LOGIN); },
              child: const Text('Login'),
            ),

            Text(userId),
            
            ElevatedButton(
              onPressed: () { 
                const extra = <String, dynamic> {
                    'planeta': 'Tierra',
                    'edad': 10000
                };
                context.pushReplacement("ROUTE_SETTING", extra: extra); 
              },
              child: const Text('Setting'),
            ),


          ],
        ),
      ),
    );
  }
}
