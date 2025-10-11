import 'package:flutter/material.dart';

class FuncionPage extends StatelessWidget {
  const FuncionPage({super.key});

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
              'Funciones en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Las funciones son bloques de código reutilizables que realizan una tarea específica. Son fundamentales en la programación porque permiten organizar el código, evitar repetición y hacer el programa más mantenible.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '¿Qué es una Función?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Una función es un conjunto de instrucciones que:\n'
              '• Puede recibir datos de entrada (parámetros)\n'
              '• Ejecuta una serie de operaciones\n'
              '• Puede devolver un resultado\n'
              '• Tiene un nombre único para ser llamada desde cualquier parte del código',
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
                    'Piensa en una función como una máquina: le das algo (parámetros), hace algo con eso (código), y te devuelve un resultado (valor de retorno).',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Estructura de una Función',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
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
                    'tipoRetorno nombreFuncion(parámetros) {',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  // Código a ejecutar',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  return resultado;',
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
              'Uso de las Funciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Las funciones se usan para:\n'
              '• Reutilizar código: Escribe una vez, usa muchas veces\n'
              '• Organizar código: Divide tareas complejas en partes más pequeñas\n'
              '• Facilitar el mantenimiento: Cambios en un solo lugar\n'
              '• Mejorar la legibilidad: Código más claro y estructurado\n'
              '• Evitar repetición: Principio DRY (Don\'t Repeat Yourself)',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '📚 Ejemplos Fáciles',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '1. Función sin parámetros ni retorno (void)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
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
                    '// Definición de la función',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'void saludar() {',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("¡Hola, mundo!");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Llamar a la función',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'saludar();  // Imprime: ¡Hola, mundo!',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '2. Función con parámetros',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
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
                    'void saludarPersona(String nombre) {',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("¡Hola, \$nombre!");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'saludarPersona("Ana");     // ¡Hola, Ana!',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'saludarPersona("Carlos");  // ¡Hola, Carlos!',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '3. Función con retorno de valor',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
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
                    'int sumar(int a, int b) {',
                    style: TextStyle(
                      color: Colors.greenAccent,
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
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'int resultado = sumar(5, 3);',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(resultado);  // 8',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '4. Función con expresión de flecha (Arrow Function)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Para funciones de una sola línea, puedes usar la sintaxis de flecha =>',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
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
                    'int multiplicar(int a, int b) => a * b;',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'double calcularArea(double radio) => 3.1416 * radio * radio;',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'print(multiplicar(4, 5));    // 20',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(calcularArea(5));      // 78.54',
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
              '🚀 Ejemplos Avanzados',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.purple.shade700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '1. Parámetros Opcionales Posicionales',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Usa corchetes [] para parámetros opcionales posicionales',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
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
                    'String crearSaludo(String nombre, [String? titulo]) {',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  if (titulo != null) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    return "Hola, \$titulo \$nombre";',
                    style: TextStyle(
                      color: Colors.white,
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
                    '  return "Hola, \$nombre";',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'print(crearSaludo("Ana"));          // Hola, Ana',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(crearSaludo("Ana", "Dra.")); // Hola, Dra. Ana',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '2. Parámetros Nombrados (Named Parameters)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Usa llaves {} para parámetros nombrados. Son más claros y no dependen del orden.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
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
                    'void crearUsuario({',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  required String nombre,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  required String email,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  int edad = 18,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  String? telefono,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}) {',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("Usuario: \$nombre");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("Email: \$email");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("Edad: \$edad");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  if (telefono != null) print("Tel: \$telefono");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Llamadas con diferentes combinaciones',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'crearUsuario(',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  nombre: "María",',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  email: "maria@email.com",',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    ');',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'crearUsuario(',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  nombre: "Juan",',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  email: "juan@email.com",',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  edad: 25,',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  telefono: "555-1234",',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    ');',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '3. Funciones como Parámetros (Higher-Order Functions)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'En Dart, las funciones son objetos de primera clase, lo que significa que pueden ser pasadas como parámetros.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
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
                    '// Función que recibe otra función como parámetro',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'void ejecutarOperacion(int a, int b, Function(int, int) operacion) {',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  int resultado = operacion(a, b);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print("Resultado: \$resultado");',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Funciones para pasar como parámetros',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int sumar(int a, int b) => a + b;',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int multiplicar(int a, int b) => a * b;',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Uso',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'ejecutarOperacion(5, 3, sumar);        // Resultado: 8',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'ejecutarOperacion(5, 3, multiplicar); // Resultado: 15',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '4. Funciones Anónimas (Lambdas)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Funciones sin nombre, útiles para callbacks o cuando solo se usan una vez.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
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
                    'List<int> numeros = [1, 2, 3, 4, 5];',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Función anónima tradicional',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'numeros.forEach((numero) {',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  print(numero * 2);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '});',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Función anónima con flecha',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'numeros.forEach((numero) => print(numero * 2));',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Filtrar y mapear con funciones anónimas',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'var pares = numeros.where((n) => n % 2 == 0);',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(pares);  // [2, 4]',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'var cuadrados = numeros.map((n) => n * n);',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(cuadrados);  // [1, 4, 9, 16, 25]',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '5. Closures (Funciones con Contexto)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Una closure es una función que captura variables de su entorno exterior.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
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
                    '// Función que retorna otra función',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Function crearMultiplicador(int factor) {',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  return (int numero) => numero * factor;  // Closure',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Crear funciones específicas',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'var duplicar = crearMultiplicador(2);',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'var triplicar = crearMultiplicador(3);',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'print(duplicar(5));   // 10',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(triplicar(5));  // 15',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '6. Funciones Recursivas',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Funciones que se llaman a sí mismas para resolver problemas divididos en casos más pequeños.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
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
                    '// Calcular factorial de un número',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int factorial(int n) {',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  if (n <= 1) return 1;  // Caso base',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  return n * factorial(n - 1);  // Llamada recursiva',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'print(factorial(5));  // 120 (5 * 4 * 3 * 2 * 1)',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '// Fibonacci recursivo',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int fibonacci(int n) {',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  if (n <= 1) return n;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  return fibonacci(n - 1) + fibonacci(n - 2);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '}',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'print(fibonacci(6));  // 8 (0,1,1,2,3,5,8)',
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
                border: Border.all(color: Colors.amber.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.tips_and_updates, color: Colors.amber.shade900),
                      const SizedBox(width: 8),
                      Text(
                        'Mejores Prácticas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade900,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '1. Dale nombres descriptivos a tus funciones (usa verbos)\n'
                    '2. Mantén las funciones pequeñas y enfocadas en una tarea\n'
                    '3. Usa parámetros nombrados para funciones con muchos parámetros\n'
                    '4. Documenta funciones complejas con comentarios ///\n'
                    '5. Prefiere funciones puras (sin efectos secundarios)\n'
                    '6. Usa la sintaxis de flecha => para funciones de una línea\n'
                    '7. Evita demasiados niveles de anidación\n'
                    '8. Retorna valores en lugar de modificar variables globales',
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
                border: Border.all(color: Colors.green.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.green.shade700),
                      const SizedBox(width: 8),
                      Text(
                        'Tipos de Funciones en Dart',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '• Funciones de nivel superior (top-level functions)\n'
                    '• Métodos de clase\n'
                    '• Funciones anónimas (lambdas)\n'
                    '• Arrow functions (funciones de flecha)\n'
                    '• Closures (funciones con contexto)\n'
                    '• Funciones como parámetros (callbacks)\n'
                    '• Funciones recursivas\n'
                    '• Getters y setters',
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

