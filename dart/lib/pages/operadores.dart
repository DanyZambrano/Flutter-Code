import 'package:flutter/material.dart';

class OperadoresPage extends StatelessWidget {
  const OperadoresPage({super.key});

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
              '¿Qué son los Operadores?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Los operadores son símbolos especiales que realizan operaciones sobre uno o más valores (operandos). Dart incluye una amplia variedad de operadores para diferentes tipos de operaciones.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            
            // Operadores Aritméticos
            Text(
              '1. Operadores Aritméticos',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.blue.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Realizan operaciones matemáticas básicas.',
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
                    'int a = 10, b = 3;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'a + b  // Suma: 13',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a - b  // Resta: 7',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a * b  // Multiplicación: 30',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a / b  // División: 3.333...',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a ~/ b // División entera: 3',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a % b  // Módulo (resto): 1',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operadores de Incremento/Decremento
            Text(
              '2. Incremento y Decremento',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.purple.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Aumentan o disminuyen un valor en 1.',
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
                    'int x = 5;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '++x  // Pre-incremento: primero suma, luego usa (6)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'x++  // Post-incremento: primero usa, luego suma (5, después 6)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '--x  // Pre-decremento: primero resta, luego usa (4)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'x--  // Post-decremento: primero usa, luego resta (5, después 4)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operadores de Comparación
            Text(
              '3. Operadores de Comparación',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.orange.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Comparan dos valores y retornan true o false.',
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
                    'int a = 5, b = 3;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'a == b  // Igual a: false',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a != b  // Diferente de: true',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a > b   // Mayor que: true',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a < b   // Menor que: false',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a >= b  // Mayor o igual: true',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a <= b  // Menor o igual: false',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operadores Lógicos
            Text(
              '4. Operadores Lógicos',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.teal.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Combinan expresiones booleanas.',
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
                    'bool a = true, b = false;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'a && b  // AND (y): false (ambos deben ser true)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'a || b  // OR (o): true (al menos uno debe ser true)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '!a      // NOT (no): false (invierte el valor)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operadores de Asignación
            Text(
              '5. Operadores de Asignación',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.red.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Asignan valores a variables.',
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
                    'int x = 10;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'x = 5    // Asignación simple',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'x += 3   // x = x + 3 (suma y asigna)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'x -= 2   // x = x - 2 (resta y asigna)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'x *= 4   // x = x * 4 (multiplica y asigna)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'x ~/= 2  // x = x ~/ 2 (divide entero y asigna)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'x %= 3   // x = x % 3 (módulo y asigna)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operadores de Tipo
            Text(
              '6. Operadores de Tipo',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.indigo.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Verifican el tipo de un objeto.',
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
                    'var texto = "Hola";',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'var numero = 42;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'texto is String    // true (es de tipo String)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'texto is! int      // true (NO es de tipo int)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'numero is int      // true',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operador Condicional
            Text(
              '7. Operador Condicional (Ternario)',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.green.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Alternativa corta al if-else.',
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
                    'int edad = 18;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'String mensaje = edad >= 18 ? "Mayor de edad" : "Menor de edad";',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// condición ? valor_si_true : valor_si_false',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operadores Null
            Text(
              '8. Operadores para Null Safety',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.pink.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Manejan valores nulos de forma segura.',
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
                    'String? nombre = null;',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// ?? - Operador de fusión nula',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'String saludo = nombre ?? "Invitado"; // "Invitado"',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// ??= - Asigna solo si es null',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'nombre ??= "Sin nombre"; // Asigna si nombre es null',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// ?. - Acceso seguro a miembro',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'int? longitud = nombre?.length; // null si nombre es null',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Operador Cascade
            Text(
              '9. Operador Cascade (..)',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.brown.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Permite realizar múltiples operaciones sobre el mismo objeto.',
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
                    'var lista = [];',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    'lista',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '  ..add(1)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '  ..add(2)',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '  ..add(3); // [1, 2, 3]',
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Equivalente a:',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '// lista.add(1);',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '// lista.add(2);',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                  Text(
                    '// lista.add(3);',
                    style: TextStyle(color: Colors.green, fontFamily: 'monospace', fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Tabla de Precedencia
            Text(
              'Precedencia de Operadores',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.deepPurple.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Orden de evaluación (de mayor a menor precedencia):',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('1. Postfijo: ++, --, ()'),
                  Text('2. Prefijo: ++, --, -, !, ~'),
                  Text('3. Multiplicación: *, /, ~/, %'),
                  Text('4. Suma: +, -'),
                  Text('5. Comparación: <, >, <=, >=, is, is!'),
                  Text('6. Igualdad: ==, !='),
                  Text('7. AND lógico: &&'),
                  Text('8. OR lógico: ||'),
                  Text('9. Ternario: ? :'),
                  Text('10. Asignación: =, +=, -=, etc.'),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Consejo final
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
                    'Cuando combines múltiples operadores, usa paréntesis para hacer tu código más legible y evitar errores. '
                    'Por ejemplo: (a + b) * c es más claro que a + b * c.',
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

