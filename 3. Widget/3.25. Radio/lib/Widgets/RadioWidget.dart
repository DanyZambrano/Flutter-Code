import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => RadioWidgetState();
}

class RadioWidgetState extends State<RadioWidget> {
  String opcionSeleccionada = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Radio(
            activeColor: Colors.blue,
            //fillColor: WidgetStateProperty.all(Colors.amberAccent),
            value: "Option 1",
            groupValue: opcionSeleccionada,
            onChanged: (opcionSeleccionada) {
              radioSeleccionado(opcionSeleccionada);
            }
          ),
          Radio(
            activeColor: Colors.blue,
            value: "Option 2",
            groupValue: opcionSeleccionada,
            onChanged: (opcionSeleccionada) {
              radioSeleccionado(opcionSeleccionada);
            }
          ),
        ],
      ),
    );
  }

  radioSeleccionado(opcion) {
    setState(() {
      opcionSeleccionada = opcion.toString();
      debugPrint(opcionSeleccionada);
    });
  }
}
