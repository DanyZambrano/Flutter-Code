import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';

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
                  onPressed: () { 
                    Navigator.popAndPushNamed(context, ROUTE_HOME);
                  },
                  child: const Text('Home'),
                ),

                ElevatedButton(
                  onPressed: () { 
                    Navigator.pushNamed(context, ROUTE_PERFIL);
                  },
                  child: const Text('Perfil'),
                ),

              ],
        ),
      ),
    );
  }
}