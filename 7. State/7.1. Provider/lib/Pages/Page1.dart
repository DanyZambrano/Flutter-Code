import 'package:flutter/material.dart';
import 'package:flutter_widgets/Providers/CounterProvider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              context.watch<CounterProvider>().value.toString(),
              style: const TextStyle(fontSize: 50)
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterProvider>().incrementarContador();
              },
              child: const Text("Incrementar"),
            ),
          ],
        ),
      ),
    );
  }
}
