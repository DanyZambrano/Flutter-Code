import 'package:flutter/material.dart';
import 'package:flutter_widgets/Providers/CounterProvider.dart';
import 'package:flutter_widgets/Providers/UserProvider.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  title: const Text("Page 2") ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              Text("Nombre: ${context.watch<UserProvider>().userName}", style: const TextStyle(fontSize: 50)),
              Text("Contador: ${context.watch<CounterProvider>().value.toString()}", style: const TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
