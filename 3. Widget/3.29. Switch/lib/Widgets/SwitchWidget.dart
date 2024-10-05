import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => SwitchWidgetState();
}

class SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(value: isSwitched, onChanged: (value) => cambio(value));
  }

  cambio(opcion) {
    setState(() {
      isSwitched = opcion;
      debugPrint(opcion.toString());
    });
  }
}
