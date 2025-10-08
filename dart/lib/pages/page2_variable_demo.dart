import 'package:flutter/material.dart';

class VariableDemo extends StatefulWidget {
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
