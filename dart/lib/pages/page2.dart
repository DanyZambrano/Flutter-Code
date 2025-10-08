import 'package:flutter/material.dart';
import '../pages/page2_variable_demo.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
