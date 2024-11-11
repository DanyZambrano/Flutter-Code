import 'package:flutter/material.dart';
import 'package:flutter_widgets/Pages/HomePage.dart';
import 'package:flutter_widgets/Services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                //Google Buttons
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () async {

                      final credenciales = await AuthService().signInWithGoogle();

                      debugPrint(credenciales.user?.displayName);
                      debugPrint(credenciales.user?.photoURL);
                      debugPrint(credenciales.user?.email);

                      Navigator.push( context, MaterialPageRoute(builder: (context) => const HomePage()));
                      
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        const Text("Continua con Google"),
                      ],
                    ),
                  ),
                ),


              ],
        ),
      )
    ),
    );
  }
}
