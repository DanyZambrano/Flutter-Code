import 'package:flutter/material.dart';

class ComentariosPage extends StatelessWidget {
  const ComentariosPage({super.key});

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
              '¿Qué son los Comentarios?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Los comentarios son líneas de texto en el código que son ignoradas por el compilador. Sirven para documentar, explicar y hacer más comprensible el código para otros programadores o para ti mismo en el futuro.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Text(
              '¿Para qué se usan?',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('• Explicar código complejo o algoritmos'),
                Text('• Documentar funciones, clases y métodos'),
                Text('• Dejar notas para futuros desarrolladores'),
                Text('• Desactivar temporalmente código sin borrarlo'),
                Text('• Marcar tareas pendientes (TODO, FIXME)'),
                Text('• Mejorar la legibilidad del código'),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              '1. Comentarios de Una Línea',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.blue.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Se usan para comentarios cortos. Todo lo que está después de // es ignorado.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '// Este es un comentario de una línea',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'int edad = 25; // Variable que almacena la edad',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Función para calcular el área de un círculo',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'double calcularArea(double radio) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  return 3.1416 * radio * radio;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '2. Comentarios de Bloque',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.purple.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Se usan para comentarios más largos que ocupan varias líneas. Todo entre /* y */ es ignorado.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '/*',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Este es un comentario de bloque',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'que puede ocupar múltiples líneas',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'y es muy útil para explicaciones largas',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '*/',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '/* Temporalmente desactivado',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'void funcionVieja() {',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("Esta función ya no se usa");',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '*/',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '3. Comentarios de Documentación',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.orange.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Dart tiene comentarios especiales para documentación que comienzan con ///. Estos se usan para generar documentación automática.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '/// Calcula la suma de dos números.',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '///',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '/// [a] es el primer número',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '/// [b] es el segundo número',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '/// Retorna la suma de ambos números.',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int sumar(int a, int b) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  return a + b;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Buenas Prácticas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.teal.shade700,
                  ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('✓ Escribe comentarios claros y concisos'),
                Text('✓ Actualiza los comentarios cuando cambies el código'),
                Text('✓ Evita comentarios obvios que no aportan valor'),
                Text('✓ Usa comentarios para explicar el "por qué", no solo el "qué"'),
                Text('✓ Documenta funciones públicas y clases importantes'),
                Text('✗ No escribas comentarios redundantes'),
                Text('✗ No dejes código comentado por mucho tiempo'),
              ],
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lightbulb, color: Colors.blue.shade700),
                      const SizedBox(width: 8),
                      Text(
                        'Consejo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Los comentarios son herramientas poderosas, pero el mejor código es aquel que se explica por sí mismo. '
                    'Usa nombres descriptivos para variables y funciones, y reserva los comentarios para explicar decisiones complejas o no obvias.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

