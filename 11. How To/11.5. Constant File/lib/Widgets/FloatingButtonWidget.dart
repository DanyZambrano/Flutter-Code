import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatefulWidget {
  const FloatingButtonWidget({super.key});

  @override
  State<FloatingButtonWidget> createState() => _FloatingButtonWidgetState();
}

class _FloatingButtonWidgetState extends State<FloatingButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
      tooltip: 'Increment',
      onPressed: () {
        bottomMenu();
      },
      child: const Icon(Icons.add, color: Colors.white, size: 28),
    );
  }

  bottomMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.account_circle_sharp),
                title: const Text("Option 1"),
                onTap: () {
                  debugPrint("Option 1");
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle_sharp),
                title: const Text("Option 2"),
                onTap: () {
                  debugPrint("Option 2");
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle_sharp),
                title: const Text("Option 3"),
                onTap: () {
                  debugPrint("Option 3");
                },
              )
            ],
          );
        });
  }
}
