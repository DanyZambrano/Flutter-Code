import 'package:flutter/material.dart';

class QueEs extends StatelessWidget {
  const QueEs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '¿Qué es Dart?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Dart es un lenguaje de programación desarrollado por Google, orientado a objetos, optimizado para aplicaciones cliente en múltiples plataformas como web, móvil y escritorio. Es conocido por su rapidez, facilidad de aprendizaje y su uso principal en Flutter.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Fundamentos con C++',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Dart comparte varias bases fundamentales con C++:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('• Sintaxis similar: Llaves {}, punto y coma, y estructura de código'),
                const Text('• Programación orientada a objetos: Clases, herencia, polimorfismo'),
                const Text('• Tipado estático: Verificación de tipos en tiempo de compilación'),
                const Text('• Gestión de memoria: Garbage collector automático (a diferencia de C++)'),
                const Text('• Compilación: Compilado a código nativo para mejor rendimiento'),
                const Text('• Estructuras de control: if/else, loops, switch similares a C++'),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'Timeline de Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('2011: Dart es anunciado por Google.'),
                Text('2013: Primera versión estable.'),
                Text('2018: Lanzamiento de Flutter 1.0 usando Dart.'),
                Text('2021: Dart 2.13 agrega soporte para FFI y null safety.'),
                Text(
                  '2023: Dart 3.0 introduce mejoras en rendimiento y seguridad.',
                ),
                Text(
                  '2025: Dart sigue evolucionando con nuevas características.',
                ),
                Text(
                  '2026: Dart 4.0 con macros system y WebAssembly support.',
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Próximos Pasos para 2026',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('• Dart 4.0: Lanzamiento mayor con nuevas características'),
                Text('• Macros System: Sistema de macros para metaprogramación'),
                Text('• WebAssembly Support: Soporte nativo para WebAssembly'),
                Text('• Enhanced Pattern Matching: Mejoras en pattern matching'),
                Text('• Better Performance: Optimizaciones adicionales'),
                Text('• Improved Tooling: Herramientas de desarrollo avanzadas'),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              '¿Cuántas sintaxis o comandos tiene Dart?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Dart cuenta con cientos de comandos y sintaxis, incluyendo variables, funciones, clases, colecciones, control de flujo, manejo de errores, asíncronía, entre otros.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          '67',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Palabras Clave',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 40),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          '200+',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Comandos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
