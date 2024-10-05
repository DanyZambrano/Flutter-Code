import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => DropdownButtonWidgetState();
}

class DropdownButtonWidgetState extends State<DropdownButtonWidget> {
 
  // Valor inicial
  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      elevation: 20,
      iconEnabledColor: Colors.amberAccent,
      hint: dropdownvalue == null
          ? const Text('Seleccione un Item')
          : Text(dropdownvalue),
      isExpanded: true,
      style: const TextStyle(fontSize:30, color: Colors.blue),
      iconSize: 50.0,
      value: dropdownvalue,
      icon: const Icon(Icons.keyboard_arrow_down),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
