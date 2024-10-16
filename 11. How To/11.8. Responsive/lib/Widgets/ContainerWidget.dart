import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Device.screenType == ScreenType.tablet
        ? Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/dog.jpg"), 
                  fit: BoxFit.cover,
              ),
            ),
            child: const Text(""),
          )
        : Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/dog.jpg"), 
                  fit: BoxFit.cover,
              ),
            ),
            child: const Text(""),
          );
        }
}
