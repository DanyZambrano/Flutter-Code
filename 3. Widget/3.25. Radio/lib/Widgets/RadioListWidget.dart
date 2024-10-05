import 'package:flutter/material.dart';

class RadioListWidget extends StatefulWidget {
  const RadioListWidget({super.key});

  @override
  State<RadioListWidget> createState() => RadioListWidgetState();
}

class RadioListWidgetState extends State<RadioListWidget> {
  String _opcionSeleccionada = "";

  @override
  void initState() {
    super.initState();
    _opcionSeleccionada = "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<String>(
          activeColor: Colors.blue,
          title: const Text("Gato"),
          subtitle: const Text("Animal Felino"),
          value: "gatico",
          groupValue: _opcionSeleccionada,
          onChanged: (value) {
            radioSeleccionado(value);
          },
        ),
        RadioListTile<String>(
          activeColor: Colors.green,
          title: const Text("Perro"),
          subtitle: const Text("Animal Canino"),
          value: "perrito",
          groupValue: _opcionSeleccionada,
          onChanged: (value) {
            radioSeleccionado(value);
          },
        ),
        RadioListTile<String>(
          activeColor: Colors.pinkAccent,
          title: const Text("Loro"),
          subtitle: const Text("Animal tipo Ave"),
          value: "Lorito",
          groupValue: _opcionSeleccionada,
          onChanged: (value) {
            radioSeleccionado(value);
          },
        ),
      ],
    );
  }

  radioSeleccionado(valor) {
    setState(() {
      _opcionSeleccionada = valor;
      debugPrint(valor.toString());
    });
  }
}
