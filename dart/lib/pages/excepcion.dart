import 'package:flutter/material.dart';

class ExcepcionPage extends StatelessWidget {
  const ExcepcionPage({super.key});

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
              'Excepciones en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Las excepciones son eventos que interrumpen el flujo normal de ejecución de un programa. El manejo de excepciones permite controlar errores de manera elegante y evitar que la aplicación se cierre inesperadamente.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '¿Qué es una Excepción?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Una excepción es un problema que ocurre durante la ejecución del programa. En Dart, cuando ocurre un error, se "lanza" (throw) una excepción. Si no se maneja, el programa se detendrá.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
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
                        'Concepto clave',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'El manejo de excepciones permite que tu programa continúe ejecutándose incluso cuando ocurren errores, proporcionando una mejor experiencia al usuario.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Bloque Try-Catch Básico',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'El bloque try-catch es la estructura básica para manejar excepciones:',
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
                    '// Ejemplo básico de try-catch',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'void dividir() {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    int resultado = 10 ~/ 0;  // División por cero',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print(resultado);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Error: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// Salida: Error: IntegerDivisionByZeroException',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Capturar Excepciones Específicas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes capturar tipos específicos de excepciones para manejarlas de manera diferente:',
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
                    'void procesarDatos(String texto) {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    int numero = int.parse(texto);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Número: \$numero");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } on FormatException {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Error: El texto no es un número válido");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } on Exception catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Otra excepción: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'procesarDatos("abc");  // Error: El texto no es un número válido',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Bloque Finally',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'El bloque finally se ejecuta siempre, independientemente de si ocurrió una excepción o no. Es útil para limpiar recursos:',
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
                    'void leerArchivo() {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Abriendo archivo...");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    throw Exception("Error al leer archivo");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Error: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } finally {',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Cerrando archivo (siempre se ejecuta)");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Stack Trace',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes capturar el stack trace para obtener información detallada sobre dónde ocurrió el error:',
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
                    'void ejemploStackTrace() {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    throw Exception("Error personalizado");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } catch (e, stackTrace) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Excepción: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Stack trace: \$stackTrace");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Lanzar Excepciones (throw)',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes lanzar tus propias excepciones usando la palabra clave throw:',
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
                    'void verificarEdad(int edad) {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  if (edad < 18) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    throw Exception("Debes ser mayor de edad");',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("Acceso permitido");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// También puedes lanzar Strings',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'throw "Error: algo salió mal";',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Excepciones Personalizadas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes crear tus propias clases de excepción para manejar casos específicos:',
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
                    '// Definir excepción personalizada',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'class SaldoInsuficienteException implements Exception {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  final String mensaje;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  final double saldoActual;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '  SaldoInsuficienteException(this.mensaje, this.saldoActual);',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '  @override',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  String toString() => "SaldoInsuficiente: \$mensaje (Saldo: \$saldoActual)";',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// Usar la excepción personalizada',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'void retirar(double monto, double saldo) {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  if (monto > saldo) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    throw SaldoInsuficienteException(',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      "No puedes retirar más de lo que tienes",',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      saldo',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    );',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("Retiro exitoso");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Rethrow - Relanzar Excepciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes capturar una excepción, hacer algo con ella y luego relanzarla:',
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
                    'void procesarTransaccion() {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    // Código que puede fallar',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    throw Exception("Error en transacción");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Registrando error en log...");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    rethrow;  // Relanza la excepción',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Excepciones Comunes en Dart',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '• FormatException: Error al convertir tipos',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '• IntegerDivisionByZeroException: División por cero',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '• RangeError: Índice fuera de rango',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '• NoSuchMethodError: Método no existe',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '• ArgumentError: Argumento inválido',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '• StateError: Estado inválido',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '• UnsupportedError: Operación no soportada',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Ejemplo Avanzado: Sistema de Validación',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un ejemplo completo de un sistema que utiliza múltiples tipos de excepciones:',
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
                    '// Excepciones personalizadas',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'class EmailInvalidoException implements Exception {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  final String email;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  EmailInvalidoException(this.email);',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  @override',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  String toString() => "Email inválido: \$email";',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'class PasswordDebildException implements Exception {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  String toString() => "Contraseña débil: debe tener al menos 8 caracteres";',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// Clase de validación',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'class ValidadorUsuario {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  static void validarEmail(String email) {',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    if (!email.contains("@")) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      throw EmailInvalidoException(email);',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    }',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '  static void validarPassword(String password) {',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    if (password.length < 8) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      throw PasswordDebildException();',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    }',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '  static void registrarUsuario(String email, String password) {',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      validarEmail(email);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      validarPassword(password);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      print("Usuario registrado exitosamente");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    } on EmailInvalidoException catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      print("Error de validación: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    } on PasswordDebildException catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      print("Error de validación: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    } catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      print("Error inesperado: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    }',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Ejemplo Avanzado: Manejo Asíncrono de Excepciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Las excepciones también se pueden manejar en código asíncrono:',
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
                    'Future<void> obtenerDatos() async {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    // Simulando una petición HTTP',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    await Future.delayed(Duration(seconds: 2));',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    throw Exception("Error de conexión");',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } on Exception catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Error al obtener datos: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } finally {',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Limpiando recursos...");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// Con múltiples futures',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Future<void> procesarMultiplesDatos() async {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  try {',
                    style: TextStyle(
                      color: Colors.purple,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    var resultados = await Future.wait([',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      obtenerUsuario(),',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      obtenerProductos(),',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      obtenerOrdenes(),',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    ]);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Todos los datos obtenidos");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  } catch (e) {',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    print("Error en una de las peticiones: \$e");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  }',
                    style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.amber.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.tips_and_updates, color: Colors.amber.shade700),
                      const SizedBox(width: 8),
                      Text(
                        'Mejores Prácticas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• Usa excepciones para errores excepcionales, no para control de flujo normal\n'
                    '• Crea excepciones personalizadas para errores específicos de tu dominio\n'
                    '• Captura excepciones específicas antes que las genéricas\n'
                    '• Siempre limpia recursos en el bloque finally\n'
                    '• Proporciona mensajes de error descriptivos\n'
                    '• No captures excepciones si no sabes cómo manejarlas\n'
                    '• Usa rethrow para propagar excepciones después de registrarlas\n'
                    '• Documenta las excepciones que tus funciones pueden lanzar',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green.shade700),
                      const SizedBox(width: 8),
                      Text(
                        'Resumen',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Las excepciones son una herramienta poderosa para manejar errores en Dart. Permiten:\n\n'
                    '• Separar el código de manejo de errores del código principal\n'
                    '• Propagar errores a través de múltiples niveles de llamadas\n'
                    '• Crear tipos específicos de errores para diferentes situaciones\n'
                    '• Garantizar que los recursos se limpien adecuadamente\n'
                    '• Hacer que tu código sea más robusto y mantenible',
                    style: Theme.of(context).textTheme.bodyMedium,
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

