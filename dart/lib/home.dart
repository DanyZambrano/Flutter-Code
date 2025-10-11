import 'package:flutter/material.dart';
import '../pages/que_es.dart';
import '../pages/comentarios.dart';
import '../pages/const_var.dart';
import '../pages/tipos_de_datos.dart';
import '../pages/control_flow.dart';
import '../pages/ternario.dart';
import '../pages/enum.dart';
import '../pages/operadores.dart';
import '../pages/colleciones.dart';
import '../pages/genericos.dart';

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
        page = ComentariosPage();
        break;
      case 2:
        page = ConstVar();
        break;
      case 3:
        page = TiposDeDatos();
        break;
      case 4:
        page = OperadoresPage();
        break;
      case 5:
        page = TernarioPage();
        break;
      case 6:
        page = ControlFlowPage();
        break;
      case 7:
        page = EnumPage();
        break;
      case 8:
        page = ColeccionesPage();
        break;
      case 9:
        page = GenericsPage();
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
                    icon: Icon(Icons.comment),
                    label: Text('Comentarios'),
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
                    icon: Icon(Icons.calculate),
                    label: Text('Operadores'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.question_mark),
                    label: Text('Operador Ternario'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.alt_route),
                    label: Text('Control Flow'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.list),
                    label: Text('Enums'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.collections),
                    label: Text('Colecciones'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.code),
                    label: Text('Genéricos'),
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
