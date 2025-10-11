import 'package:flutter/material.dart';

class TiposDeDatos extends StatefulWidget {
  const TiposDeDatos({super.key});

  @override
  State<TiposDeDatos> createState() => _TiposDeDatosState();
}

class _TiposDeDatosState extends State<TiposDeDatos> {
  final TextEditingController _valueController = TextEditingController();

  String _selectedType = 'int';
  bool _boolValue = false;
  bool _assignNull = true;
  String? _errorMessage;
  String _generatedCode = '';

  @override
  void dispose() {
    _valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tipos de Datos en Dart',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            'Dart es un lenguaje fuertemente tipado. Algunos de los tipos de datos más usados son:',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 24),
          _tipoDato('int', 'Números enteros', 'int edad = 25;'),
          _tipoDato('double', 'Números decimales', 'double altura = 1.75;'),
          _tipoDato('String', 'Cadenas de texto', "String nombre = 'Ana';"),
          _tipoDato(
            'bool',
            'Valores verdadero o falso',
            'bool esMayorEdad = true;',
          ),
          _tipoDato(
            'List',
            'Lista de elementos',
            "List<String> frutas = ['Manzana', 'Banana', 'Naranja'];",
          ),
          _tipoDato(
            'Map',
            'Clave-valor',
            "Map<String, int> edades = {'Ana': 25, 'Luis': 30};",
          ),
          _tipoDato(
            'null / nullable',
            'Variables que pueden no tener valor (null). Se indica con el signo de interrogación (?) después del tipo.',
            'int? edad = null;\nString? nombre = null;',
          ),
          SizedBox(height: 32),
          Text(
            '¡Prueba crear tus propias variables usando estos tipos!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16),
          _buildInteractiveDemo(context),
        ],
      ),
    );
  }

  Widget _tipoDato(String tipo, String descripcion, String ejemplo) {
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
                tipo,
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
                  ejemplo,
                  style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInteractiveDemo(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Demo interactivo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Selecciona un tipo y escribe un valor para ver cómo se declara una variable.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              initialValue: _selectedType,
              decoration: InputDecoration(
                labelText: 'Tipo de dato',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'int', child: Text('int')),
                DropdownMenuItem(value: 'double', child: Text('double')),
                DropdownMenuItem(value: 'String', child: Text('String')),
                DropdownMenuItem(value: 'bool', child: Text('bool')),
                DropdownMenuItem(value: 'List', child: Text('List<String>')),
                DropdownMenuItem(value: 'Map', child: Text('Map<String, int>')),
                DropdownMenuItem(
                  value: 'nullable',
                  child: Text('int? (nullable)'),
                ),
              ],
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  _selectedType = value;
                  _valueController.clear();
                  _errorMessage = null;
                  _generatedCode = '';
                  _assignNull = true;
                  _boolValue = false;
                });
              },
            ),
            SizedBox(height: 16),
            if (_selectedType == 'bool')
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Valor booleano'),
                value: _boolValue,
                onChanged: (value) {
                  setState(() {
                    _boolValue = value;
                  });
                },
              )
            else if (_selectedType == 'nullable')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Asignar null'),
                    value: _assignNull,
                    onChanged: (value) {
                      setState(() {
                        _assignNull = value;
                        _errorMessage = null;
                        if (value) {
                          _valueController.clear();
                        }
                      });
                    },
                  ),
                  if (!_assignNull)
                    TextField(
                      controller: _valueController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Valor entero',
                        helperText: 'Ingresa un número entero para asignarlo.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                ],
              )
            else ...[
              TextField(
                controller: _valueController,
                keyboardType:
                    _selectedType == 'int' || _selectedType == 'double'
                    ? TextInputType.numberWithOptions(decimal: true)
                    : TextInputType.text,
                decoration: InputDecoration(
                  labelText: _fieldLabelForType(_selectedType),
                  helperText: _helperTextForType(_selectedType),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _generateVariable,
                child: Text('Generar variable'),
              ),
            ),
            if (_errorMessage != null) ...[
              SizedBox(height: 12),
              Text(
                _errorMessage!,
                style: TextStyle(
                  color: Colors.red[700],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
            if (_generatedCode.isNotEmpty) ...[
              SizedBox(height: 12),
              Text(
                'Código generado:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                color: Colors.grey[200],
                child: Text(
                  _generatedCode,
                  style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _fieldLabelForType(String type) {
    switch (type) {
      case 'int':
        return 'Valor entero';
      case 'double':
        return 'Valor decimal';
      case 'String':
        return 'Texto';
      case 'List':
        return 'Valores separados por comas';
      case 'Map':
        return 'Pares clave:valor separados por comas';
      default:
        return 'Valor';
    }
  }

  String? _helperTextForType(String type) {
    switch (type) {
      case 'int':
        return 'Ejemplo: 42';
      case 'double':
        return 'Ejemplo: 3.14';
      case 'String':
        return 'Ejemplo: Hola mundo';
      case 'List':
        return "Ejemplo: Manzana, Banana, Naranja";
      case 'Map':
        return "Ejemplo: Ana:25, Luis:30";
      default:
        return null;
    }
  }

  void _generateVariable() {
    setState(() {
      _errorMessage = null;
      _generatedCode = '';

      switch (_selectedType) {
        case 'int':
          final value = int.tryParse(_valueController.text.trim());
          if (value == null) {
            _errorMessage = 'Introduce un número entero válido.';
            return;
          }
          _generatedCode = 'int miEntero = $value;';
          break;
        case 'double':
          final normalized = _valueController.text.trim().replaceAll(',', '.');
          final value = double.tryParse(normalized);
          if (value == null) {
            _errorMessage = 'Introduce un número decimal válido.';
            return;
          }
          _generatedCode = 'double miDecimal = $value;';
          break;
        case 'String':
          final text = _valueController.text;
          if (text.isEmpty) {
            _errorMessage = 'Introduce un texto para tu String.';
            return;
          }
          final escaped = text.replaceAll("'", "\\'");
          _generatedCode = "String miTexto = '$escaped';";
          break;
        case 'bool':
          _generatedCode = 'bool miBandera = ${_boolValue.toString()};';
          break;
        case 'List':
          final items = _valueController.text
              .split(',')
              .map((item) => item.trim())
              .where((item) => item.isNotEmpty)
              .toList();
          if (items.isEmpty) {
            _errorMessage =
                'Introduce al menos un elemento separado por comas.';
            return;
          }
          final formattedItems = items
              .map((item) => "'${item.replaceAll("'", "\\'")}'")
              .join(', ');
          _generatedCode = 'List<String> misElementos = [$formattedItems];';
          break;
        case 'Map':
          final entriesRaw = _valueController.text.split(',');
          final buffer = <String>[];
          for (final entry in entriesRaw) {
            if (entry.trim().isEmpty) continue;
            final parts = entry.split(':');
            if (parts.length != 2) {
              _errorMessage =
                  'Usa el formato clave:valor y separa con comas cada par.';
              return;
            }
            final key = parts[0].trim();
            final value = int.tryParse(parts[1].trim());
            if (key.isEmpty || value == null) {
              _errorMessage =
                  'Cada clave debe tener un valor entero. Ejemplo: Ana:25';
              return;
            }
            final escapedKey = key.replaceAll("'", "\\'");
            buffer.add("'$escapedKey': $value");
          }
          if (buffer.isEmpty) {
            _errorMessage =
                'Introduce al menos un par clave:valor separado por comas.';
            return;
          }
          final pairs = buffer.join(', ');
          _generatedCode = 'Map<String, int> miMapa = {$pairs};';
          break;
        case 'nullable':
          if (_assignNull) {
            _generatedCode = 'int? miNullable = null;';
            return;
          }
          final value = int.tryParse(_valueController.text.trim());
          if (value == null) {
            _errorMessage =
                'Introduce un número entero o activa la opción "Asignar null".';
            return;
          }
          _generatedCode = 'int? miNullable = $value;';
          break;
        default:
          _errorMessage = 'Tipo de dato no soportado.';
      }
    });
  }
}
