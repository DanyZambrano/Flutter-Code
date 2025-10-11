import 'package:flutter/material.dart';

class ControlFlowPage extends StatefulWidget {
  const ControlFlowPage({super.key});

  @override
  State<ControlFlowPage> createState() => _ControlFlowPageState();
}

class _ControlFlowPageState extends State<ControlFlowPage> {
  String _selectedStructure = 'if';
  double _number = 3;
  String _demoDescription = '';
  String _demoCode = '';
  List<String> _demoOutput = [];

  @override
  void initState() {
    super.initState();
    _updateDemo();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Control Flow en Dart',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            'Las estructuras de control de flujo permiten decidir que instrucciones ejecutar y cuantas veces hacerlo.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 24),
          _controlFlowCard(
            titulo: 'if / else',
            descripcion:
                'Evalua una condicion booleana; si es verdadera ejecuta un bloque y si no, ejecuta otro.',
            codigo: '''
if (edad >= 18) {
  print('Mayor de edad');
} else {
  print('Menor de edad');
}
''',
          ),
          _controlFlowCard(
            titulo: 'switch / case',
            descripcion:
                'Compara una variable contra multiples casos para ejecutar el bloque que coincida.',
            codigo: '''
switch (dia) {
  case 1:
    print('Lunes');
    break;
  case 2:
    print('Martes');
    break;
  default:
    print('Otro dia');
}
''',
          ),
          _controlFlowCard(
            titulo: 'for',
            descripcion:
                'Se usa cuando conoces el numero exacto de repeticiones. Ideal para iterar listas o rangos.',
            codigo: '''
for (var i = 0; i < 5; i++) {
  print('Iteracion \$i');
}
''',
          ),
          _controlFlowCard(
            titulo: 'while',
            descripcion:
                'Repite un bloque mientras una condicion sea verdadera. La condicion se evalua al inicio.',
            codigo: '''
var contador = 3;
while (contador > 0) {
  print(contador);
  contador--;
}
''',
          ),
          _controlFlowCard(
            titulo: 'do-while',
            descripcion:
                'Ejecuta el bloque al menos una vez y luego repite mientras la condicion siga siendo verdadera.',
            codigo: '''
var intentos = 0;
do {
  intentos++;
  print('Intento \$intentos');
} while (intentos < 3);
''',
          ),
          SizedBox(height: 32),
          Text(
            'Demo: prueba estas estructuras',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            'Selecciona una estructura de control y ajusta el valor para ver como cambia el resultado.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          DropdownButtonFormField<String>(
            initialValue: _selectedStructure,
            decoration: InputDecoration(
              labelText: 'Estructura',
              border: OutlineInputBorder(),
            ),
            items: const [
              DropdownMenuItem(value: 'if', child: Text('if / else')),
              DropdownMenuItem(value: 'switch', child: Text('switch / case')),
              DropdownMenuItem(value: 'for', child: Text('for')),
              DropdownMenuItem(value: 'while', child: Text('while')),
              DropdownMenuItem(value: 'doWhile', child: Text('do-while')),
            ],
            onChanged: (value) {
              if (value == null) return;
              setState(() {
                _selectedStructure = value;
                _updateDemo();
              });
            },
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Slider(
                  value: _number,
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: _number.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _number = value;
                      _updateDemo();
                    });
                  },
                ),
              ),
              SizedBox(
                width: 56,
                child: Text(
                  _number.round().toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_demoDescription, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 12),
                  Text(
                    'Codigo generado:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    color: Colors.grey[200],
                    child: Text(
                      _demoCode,
                      style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Salida:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    color: Colors.grey[200],
                    child: Text(
                      _demoOutput.join('\n'),
                      style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _controlFlowCard({
    required String titulo,
    required String descripcion,
    required String codigo,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(descripcion, style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                color: Colors.grey[200],
                child: Text(
                  codigo,
                  style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateDemo() {
    final int number = _number.round();
    switch (_selectedStructure) {
      case 'if':
        final isEven = number % 2 == 0;
        _demoDescription =
            'Usamos if/else para decidir si el numero $number es par o impar.';
        _demoCode =
            '''
final numero = $number;
if (numero % 2 == 0) {
  print('Es par');
} else {
  print('Es impar');
}
''';
        _demoOutput = [isEven ? 'Es par' : 'Es impar'];
        break;
      case 'switch':
        final dias = {
          1: 'Lunes',
          2: 'Martes',
          3: 'Miercoles',
          4: 'Jueves',
          5: 'Viernes',
          6: 'Sabado',
          7: 'Domingo',
        };
        final dia = dias[number] ?? 'Sin coincidencia';
        _demoDescription =
            'El switch compara el numero $number con diferentes casos para mostrar el dia correspondiente.';
        _demoCode =
            '''
final diaNumero = $number;
switch (diaNumero) {
  case 1:
    print('Lunes');
    break;
  case 2:
    print('Martes');
    break;
  case 3:
    print('Miercoles');
    break;
  case 4:
    print('Jueves');
    break;
  case 5:
    print('Viernes');
    break;
  case 6:
    print('Sabado');
    break;
  case 7:
    print('Domingo');
    break;
  default:
    print('Sin coincidencia');
}
''';
        _demoOutput = [dia];
        break;
      case 'for':
        final iterations = List.generate(number, (index) => 'Iteracion $index');
        final rango = number > 0 ? '0 a ${number - 1}' : '0 (sin iteraciones)';
        _demoDescription =
            'El ciclo for recorre un rango de $rango y muestra cada paso.';
        _demoCode =
            '''
for (var i = 0; i < $number; i++) {
  print('Iteracion \$i');
}
''';
        _demoOutput = number > 0
            ? iterations
            : ['(No se ejecuta porque el limite es 0)'];
        break;
      case 'while':
        final buffer = <String>[];
        var contador = number;
        while (contador > 0) {
          buffer.add('Contador: $contador');
          contador--;
        }
        if (buffer.isEmpty) {
          buffer.add('(No se ejecuta porque la condicion inicial es falsa)');
        }
        _demoDescription =
            'El ciclo while continua mientras el contador sea mayor que 0.';
        _demoCode =
            '''
var contador = $number;
while (contador > 0) {
  print('Contador: \$contador');
  contador--;
}
''';
        _demoOutput = buffer;
        break;
      case 'doWhile':
        final buffer = <String>[];
        var contador = number;
        do {
          buffer.add('Contador: $contador');
          contador--;
        } while (contador > 0);
        _demoDescription =
            'El ciclo do-while se ejecuta al menos una vez, incluso si el numero inicial es 0.';
        _demoCode =
            '''
var contador = $number;
do {
  print('Contador: \$contador');
  contador--;
} while (contador > 0);
''';
        _demoOutput = buffer;
        break;
      default:
        _demoDescription = 'Selecciona una estructura para iniciar la demo.';
        _demoCode = '';
        _demoOutput = [];
    }
  }
}
