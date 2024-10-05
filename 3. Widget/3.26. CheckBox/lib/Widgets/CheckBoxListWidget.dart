import 'package:flutter/material.dart';
import 'package:flutter_widgets/Model/Personaje.dart';

class CheckBoxListWidget extends StatefulWidget {
  const CheckBoxListWidget({super.key});

  @override
  State<CheckBoxListWidget> createState() => CheckBoxListWidgetState();
}

class CheckBoxListWidgetState extends State<CheckBoxListWidget> {
  List<Personaje> misPersonajes = [];

  @override
  void initState() {
    super.initState();
     misPersonajes = personajes;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: misPersonajes.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            activeColor: Colors.blueAccent,
            title: Text(misPersonajes[index].Nombre),
            value: misPersonajes[index].Status,
            onChanged: (valor) {
              checkSeleccionado(valor, index);
            }
          );
        }
      ),
    );
  }

  checkSeleccionado(valor, index) {
    setState(() {
      misPersonajes[index].Status = valor;
      debugPrint("${misPersonajes[index].Nombre} - ${misPersonajes[index].Status}");
    });
  }
}
