import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:flutter_widgets/Common/RoutersArg.dart';

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
                    Navigator.pushReplacementNamed(context, ROUTE_HOME);
                  },
                  child: const Text('Home'),
                ),

                ElevatedButton(
                  onPressed: () { 
                    Navigator.pushReplacementNamed(
                      context, 
                      ROUTE_PERFIL, 
                      arguments: RoutersArg("Perfil", "Mensaje Login"),
                    );
                  },
                  child: const Text('Perfil'),
                ),


              ],
        ),
      ),
    );
  }
}