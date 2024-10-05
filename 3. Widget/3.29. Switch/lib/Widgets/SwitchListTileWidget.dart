import 'package:flutter/material.dart';

class SwitchListTileWidget extends StatefulWidget {
  const SwitchListTileWidget({super.key});

  @override
  State<SwitchListTileWidget> createState() => SwitchListTileWidgetState();
}

class SwitchListTileWidgetState extends State<SwitchListTileWidget> {
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text("Lampara: ($isSwitched)"),
      value: isSwitched, 
      activeColor: Colors.blueAccent,
      activeTrackColor: Colors.black,
      onChanged: (value) => cambio(value)
    );
  }

  cambio(opcion) {
    setState(() {
      isSwitched = opcion;
      debugPrint(opcion.toString());
    });
  }
}
