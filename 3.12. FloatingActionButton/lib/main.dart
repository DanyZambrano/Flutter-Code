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
    return Scaffold(

            /*floatingActionButton:  FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              elevation: 10,
              tooltip: "Agregar una Tarjeta!",
              onPressed: (){

              },
              child: const Icon(Icons.add_card_rounded, size: 40, color: Colors.white),
            ),

            floatingActionButtonLocation: FloatingActionButtonLocation.startTop,*/


            floatingActionButton: FloatingActionButton.extended(
              backgroundColor: Colors.blueAccent,
              elevation: 10,
              onPressed: (){

              },
               icon: const Icon(Icons.add_card_rounded, size: 40, color: Colors.white),
               label: const Text("Agregar una Tarjeta",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),

            floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

            body: SafeArea(
              child: Center (
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        FloatingActionButton(
                          backgroundColor: Colors.blueAccent,
                          elevation: 10,
                          tooltip: "Agregar una Tarjeta!",
                          onPressed: () {

                          },
                          child: const Icon(Icons.add_card_rounded, size: 40, color: Colors.white),
                        )
                        
                      ],
                ),
              )
            ),
    );
  }

}
