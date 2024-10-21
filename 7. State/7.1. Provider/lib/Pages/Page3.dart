import 'package:flutter/material.dart';
import 'package:flutter_widgets/Providers/CounterProvider.dart';
import 'package:flutter_widgets/Providers/UserProvider.dart';
import 'package:provider/provider.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  TextEditingController ctrlName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.blue),
              decoration: const InputDecoration(
                hintText: "Escribe un Nuevo Nombre",
                hintStyle: TextStyle(color: Colors.blue),
              ),
              controller: ctrlName,
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUserName(newUserName: ctrlName.text);
                ctrlName.clear();
              },
              child: const Text("Modificar"),
            ),
            Text(context.watch<CounterProvider>().value.toString(), style: const TextStyle(fontSize: 50)),
            ElevatedButton(
              onPressed: () {
                context.read<CounterProvider>().decrementarContador();
              },
              child: const Text("Decrementar"),
            ),
          ],
        ),
      ),
    );
  }

}
