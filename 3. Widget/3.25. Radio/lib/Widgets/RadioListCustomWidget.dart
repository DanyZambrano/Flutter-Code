import 'package:flutter/material.dart';
import 'package:flutter_widgets/Model/Personaje.dart';

class RadioListCustomWidget extends StatefulWidget {
  const RadioListCustomWidget({super.key});

  @override
  State<RadioListCustomWidget> createState() => RadioListCustomWidgetState();
}

class RadioListCustomWidgetState extends State<RadioListCustomWidget> {
  String _opcionSeleccionada = "";
  List<Personaje> misPersonajes = [];

  @override
  void initState() {
    super.initState();
    _opcionSeleccionada = "";
    misPersonajes = personajes;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
          itemCount: misPersonajes.length,
          itemBuilder: (context, index) {
            return RadioListTile(
              title: Text(misPersonajes[index].Nombre),
              subtitle: Text(misPersonajes[index].Poder),
              value: misPersonajes[index].Nombre,
              onChanged: (value) {
                radioSeleccionado(value);
              },
              groupValue: _opcionSeleccionada,
            );
          }
      ),
    );
  }

  radioSeleccionado(valor) {
    setState(() {
      _opcionSeleccionada = valor;
      debugPrint(valor.toString());
    });
  }
}
