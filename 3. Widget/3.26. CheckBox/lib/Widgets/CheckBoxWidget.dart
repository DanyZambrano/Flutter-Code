import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => CheckBoxWidgetState();
}

class CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: (newValue) {
          checkSeleccionado(newValue);
        });
  }

  checkSeleccionado(valor) {
    setState(() {
      isChecked = valor;
      debugPrint(valor.toString());
    });
  }
}
