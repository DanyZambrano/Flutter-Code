import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        debugPrint("hey onDoubleTap..");
      },
      onTapDown: (TapDownDetails downDetails) {
        debugPrint("hey onTapDown.. ${downDetails.globalPosition}");
      },
      child: Container(
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
                image: AssetImage("assets/images/dog.jpg"), fit: BoxFit.cover),
          ),
          child: const Text("Container!"),
      ),
    );
  }
}
