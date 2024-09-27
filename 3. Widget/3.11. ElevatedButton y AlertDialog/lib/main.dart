import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        elevation: 20),
                    onPressed: () {
                      _showAlertDialog(context);
                    },
                    onLongPress: () {},
                    child: const Text("OK")),
                ElevatedButton.icon(
                    onPressed: () {},
                    onLongPress: () {
                       _showAlertDialog(context);
                    },
                    label: const Text("Buscar"),
                    icon: const Icon(Icons.search_rounded),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 30,
                        textStyle: const TextStyle(
                            fontSize: 30, fontStyle: FontStyle.normal))),
                SizedBox(
                  width: 300.0,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                       _showAlertDialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                    ),
                    child: const Text('Login'),
                  ),
                )
              ],
            ),
          )),
        ));
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text('Alert Dialog '),
              content: const Text('Mensaje....'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {},
                ),
              ]);
        });
  }
}
