import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 125,
              height: 125,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: const Text("Container!"),
            ),
            Container(
              width: 125,
              height: 125,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                //borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 3),
                shape: BoxShape.circle,
              ),
              child: const Text("Container!"),
            ),


             Container(
              width: 125,
              height: 125,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.black, width: 3),
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blueGrey,
                    offset: Offset(8,3),
                  ),
                ],
              ),
              child: const Text("Container!"),
            ),




            Container(
              width: 125,
              height: 125,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.black, width: 3),
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.amber
                  ],
                ),

              ),
              child: const Text("Container!"),
            ),

            Container(
              width: 125,
              height: 125,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.black, width: 3),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage("assets/images/dog.jpg"),
                  fit: BoxFit.cover
                  ),
              ),
              child: const Text("Container!"),
            ),
          ],
        ),
      ),
    );
  }
}
