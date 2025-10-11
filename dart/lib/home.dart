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
import '../pages/null_safety.dart';
import '../pages/funcion.dart';
import '../pages/metodos.dart';
import '../pages/clases.dart';
import '../pages/excepcion.dart';
import '../pages/error_handle.dart';
import '../pages/typedef.dart';
import '../pages/metadata.dart';
import '../pages/concurrencia.dart';
import '../pages/interoperabilidad.dart';
import '../pages/style.dart';

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
      case 10:
        page = NullSafetyPage();
        break;
      case 11:
        page = FuncionPage();
        break;
      case 12:
        page = MetodosPage();
        break;
      case 13:
        page = ClasesPage();
        break;
      case 14:
        page = ExcepcionPage();
        break;
      case 15:
        page = ErrorHandlePage();
        break;
      case 16:
        page = TypedefPage();
        break;
      case 17:
        page = MetadataPage();
        break;
      case 18:
        page = ConcurrenciaPage();
        break;
      case 19:
        page = InteroperabilidadPage();
        break;
      case 20:
        page = StylePage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/dart_logo.png',
                    height: 40,
                    width: 120,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Learning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Que es Dart?'),
              selected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.comment),
              title: Text('Comentarios'),
              selected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Constante y Variables'),
              selected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Tipos de Datos'),
              selected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Operadores'),
              selected: selectedIndex == 4,
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.question_mark),
              title: Text('Operador Ternario'),
              selected: selectedIndex == 5,
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.alt_route),
              title: Text('Control Flow'),
              selected: selectedIndex == 6,
              onTap: () {
                setState(() {
                  selectedIndex = 6;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Enums'),
              selected: selectedIndex == 7,
              onTap: () {
                setState(() {
                  selectedIndex = 7;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.collections),
              title: Text('Colecciones'),
              selected: selectedIndex == 8,
              onTap: () {
                setState(() {
                  selectedIndex = 8;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Genéricos'),
              selected: selectedIndex == 9,
              onTap: () {
                setState(() {
                  selectedIndex = 9;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shield),
              title: Text('Null Safety'),
              selected: selectedIndex == 10,
              onTap: () {
                setState(() {
                  selectedIndex = 10;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.functions),
              title: Text('Funciones'),
              selected: selectedIndex == 11,
              onTap: () {
                setState(() {
                  selectedIndex = 11;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Métodos'),
              selected: selectedIndex == 12,
              onTap: () {
                setState(() {
                  selectedIndex = 12;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.class_),
              title: Text('Clases'),
              selected: selectedIndex == 13,
              onTap: () {
                setState(() {
                  selectedIndex = 13;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.error_outline),
              title: Text('Excepciones'),
              selected: selectedIndex == 14,
              onTap: () {
                setState(() {
                  selectedIndex = 14;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.warning_amber),
              title: Text('Manejo de Errores'),
              selected: selectedIndex == 15,
              onTap: () {
                setState(() {
                  selectedIndex = 15;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.type_specimen),
              title: Text('Typedef'),
              selected: selectedIndex == 16,
              onTap: () {
                setState(() {
                  selectedIndex = 16;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Metadata'),
              selected: selectedIndex == 17,
              onTap: () {
                setState(() {
                  selectedIndex = 17;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sync),
              title: Text('Concurrencia'),
              selected: selectedIndex == 18,
              onTap: () {
                setState(() {
                  selectedIndex = 18;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Interoperabilidad'),
              selected: selectedIndex == 19,
              onTap: () {
                setState(() {
                  selectedIndex = 19;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.style),
              title: Text('Estilo de Código'),
              selected: selectedIndex == 20,
              onTap: () {
                setState(() {
                  selectedIndex = 20;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: page,
      ),
    );
  }
}