import 'package:flutter/material.dart';
import '../pages/que_es.dart';
import '../pages/const_var.dart';
import '../pages/tipos_de_datos.dart';
import '../pages/control_flow.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = QueEs();
        break;
      case 1:
        page = ConstVar();
        break;
      case 2:
        page = TiposDeDatos();
        break;
      case 3:
        page = ControlFlowPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Que es Dart?'),
                    ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Constante y Variables'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.star),
                    label: Text('Tipos de Datos'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.alt_route),
                    label: Text('Control Flow'),
                  ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                  unselectedLabelTextStyle: TextStyle(fontSize: 15),
                  selectedLabelTextStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
