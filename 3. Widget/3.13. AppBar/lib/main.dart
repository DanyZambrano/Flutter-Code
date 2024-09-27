import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title: const Text("My AppBar"),
              backgroundColor: Colors.amber,
              shadowColor: Colors.blueAccent,
              elevation: 10,
              centerTitle: true,
              toolbarHeight: 100,
              leading: const Icon(Icons.home, color: Colors.white),
              actions: const [
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
            body:  const SafeArea(
              child: Center (
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("AppBar"),
                      ],
                ),
              )
            ),
    );
  }

}
