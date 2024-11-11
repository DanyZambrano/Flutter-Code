import 'package:flutter/material.dart';
import 'package:flutter_widgets/Utilts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Utils().showSnackBar(context, "Opps", "Usuario No encontrado!", SNPosition.bottom, SNtype.success);
            },
            child: const Text('Mostrar SnackBar')
          )
        )
      ),
    );
  }
}
