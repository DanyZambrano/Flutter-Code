import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
              '¿Qué es Dart?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Dart es un lenguaje de programación desarrollado por Google, orientado a objetos, optimizado para aplicaciones cliente en múltiples plataformas como web, móvil y escritorio. Es conocido por su rapidez, facilidad de aprendizaje y su uso principal en Flutter.',
              style: Theme.of(context).textTheme.bodyMedium,
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
              ],
            ),
            const SizedBox(height: 32),
            Text(
              '¿Cuántas sintaxis o comandos tiene Dart?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Dart cuenta con cientos de comandos y sintaxis, incluyendo variables, funciones, clases, colecciones, control de flujo, manejo de errores, asíncronía, entre otros. La documentación oficial lista más de 100 palabras clave y decenas de estructuras sintácticas principales.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
