import 'package:flutter/material.dart';

class ConstVar extends StatelessWidget {
  const ConstVar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Constantes y Variables en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'En Dart, las variables y las constantes se usan para almacenar datos, pero tienen diferencias importantes en su uso y comportamiento.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '¿Qué es una variable?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Una variable es un espacio en memoria cuyo valor puede cambiar durante la ejecución del programa. Se declara usando var, int, double, String, etc.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Ejemplo:\nvar edad = 25;\nedad = 26;',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 16,
                  color: Color(0xFF1565C0),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '¿Qué es una constante?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Una constante es un valor que no puede cambiar después de ser asignado. Se declara usando const o final.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Ejemplo:\nconst pi = 3.1416;\nfinal fecha = DateTime.now();',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 16,
                  color: Color(0xFF1565C0),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Ejemplo explícito: const vs final',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '// const - valor conocido en tiempo de compilación\nconst pi = 3.14159;\nconst nombre = "Dart";\n\n// final - valor asignado una vez en tiempo de ejecución\nfinal fechaActual = DateTime.now();\nfinal usuario = obtenerUsuario();\n\n// Diferencia clave:\n// const: debe ser un valor literal o expresión constante\n// final: puede ser resultado de una función o cálculo',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 14,
                  color: Color(0xFF1565C0),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Diferencias clave:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '- Las variables pueden cambiar su valor, las constantes no.\n- const se usa para valores fijos en tiempo de compilación.\n- final se usa para valores que se asignan una vez y no cambian, pero pueden ser determinados en tiempo de ejecución.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '¿Cuándo usar cada una?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Usa variables para datos que pueden cambiar. Usa const para valores fijos y final para valores que se asignan una vez pero pueden depender de la ejecución.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 40),
            Divider(),
            const SizedBox(height: 16),
            Text(
              'Prueba la funcionalidad:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            VariableDemo(),
          ],
        ),
      ),
    );
  }
}

class VariableDemo extends StatefulWidget {
  const VariableDemo({super.key});

  @override
  State<VariableDemo> createState() => VariableDemoState();
}

class VariableDemoState extends State<VariableDemo> {
  String variable = '';
  final String constante = 'Este valor no cambia';
  String intentoConstante = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Variable (puedes cambiar el valor):',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Escribe algo'),
          onChanged: (value) {
            setState(() {
              variable = value;
            });
          },
        ),
        const SizedBox(height: 8),
        Text(
          'Valor actual de la variable: $variable',
          style: TextStyle(color: Color(0xFF1565C0)),
        ),
        const SizedBox(height: 16),
        Text('Constante:', style: Theme.of(context).textTheme.bodyMedium),
        Text(
          'Valor de la constante: $constante',
          style: TextStyle(color: Color(0xFF1565C0)),
        ),
        const SizedBox(height: 8),
        Text(
          'Intenta cambiar la constante:',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: 'Escribe nuevo valor'),
                onChanged: (value) {
                  setState(() {
                    intentoConstante = value;
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('¡Error!'),
                    content: const Text(
                      'No puedes cambiar el valor de una constante en Dart.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Cambiar'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Valor de la constante sigue siendo: $constante',
          style: TextStyle(color: Color(0xFF1565C0)),
        ),
      ],
    );
  }
}

