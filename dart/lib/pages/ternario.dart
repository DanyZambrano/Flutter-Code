import 'package:flutter/material.dart';

class TernarioPage extends StatelessWidget {
  const TernarioPage({super.key});

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
              '¿Qué es el Operador Ternario?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'El operador ternario (? :) es una forma compacta y elegante de escribir estructuras condicionales. Es llamado "ternario" porque trabaja con tres operandos: una condición, un valor si es verdadera, y un valor si es falsa.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Text(
              'Sintaxis',
              style: Theme.of(context).textTheme.headlineSmall,
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
                    'condición ? valorSiVerdadero : valorSiFalso',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '¿Para qué sirve?',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('• Simplificar código if-else de una sola línea'),
                Text('• Asignar valores condicionalmente de forma concisa'),
                Text('• Mejorar la legibilidad en casos simples'),
                Text('• Reducir el número de líneas de código'),
                Text('• Hacer el código más expresivo y limpio'),
                Text('• Útil en construcción de widgets en Flutter'),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'Utilidad Principal',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.blue.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'El operador ternario es especialmente útil cuando necesitas tomar decisiones rápidas para asignar valores o retornar resultados. En lugar de escribir 4-5 líneas con if-else, puedes expresar la misma lógica en una sola línea clara y concisa.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '📚 Ejemplo Sencillo: Verificar edad',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.green.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Comparación entre if-else tradicional y operador ternario:',
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
                    '// ❌ Forma tradicional con if-else',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int edad = 20;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'String mensaje;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'if (edad >= 18) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  mensaje = "Eres mayor de edad";',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '} else {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  mensaje = "Eres menor de edad";',
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
                  SizedBox(height: 16),
                  Text(
                    '// ✅ Forma elegante con operador ternario',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int edad = 20;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'String mensaje = edad >= 18 ? "Eres mayor de edad" : "Eres menor de edad";',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// Resultado: "Eres mayor de edad"',
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
                      Icon(Icons.emoji_objects, color: Colors.amber.shade700),
                      const SizedBox(width: 8),
                      Text(
                        '¿Ves la diferencia?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade900,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Con el operador ternario reducimos 7 líneas a solo 1 línea, '
                    'manteniendo la misma funcionalidad y mejorando la legibilidad.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '🚀 Ejemplo Avanzado: Sistema de Calificaciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.purple.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'El operador ternario se puede anidar para manejar múltiples condiciones:',
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
                    '// Sistema de calificación con operadores ternarios anidados',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'double nota = 85.5;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'String calificacion = nota >= 90 ? "Excelente ⭐⭐⭐"',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    : nota >= 80 ? "Muy Bien ⭐⭐"',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    : nota >= 70 ? "Bien ⭐"',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    : nota >= 60 ? "Aprobado ✓"',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    : "Reprobado ✗";',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// Resultado: "Muy Bien ⭐⭐"',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '// Ejemplo con cálculo de descuento',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'double totalCompra = 250.0;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'bool esClienteVIP = true;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'double descuento = esClienteVIP',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    ? (totalCompra > 200 ? 0.25 : 0.15)  // VIP: 25% o 15%',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    : (totalCompra > 200 ? 0.10 : 0.05); // Normal: 10% o 5%',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'double precioFinal = totalCompra * (1 - descuento);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '// Resultado: descuento = 0.25 (25%)',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '// Resultado: precioFinal = 187.5',
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
              '💎 Uso en Flutter',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.teal.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'El operador ternario es extremadamente útil en Flutter para renderizar widgets condicionalmente:',
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
                    '// Mostrar diferentes iconos según el estado',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'bool isLoading = false;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Widget build(BuildContext context) {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  return isLoading',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      ? CircularProgressIndicator()  // Mostrar cargando',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      : ElevatedButton(            // Mostrar botón',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '          onPressed: () {},',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '          child: Text("Cargar"),',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '        );',
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
                  SizedBox(height: 16),
                  Text(
                    '// Aplicar colores dinámicamente',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int puntos = 150;',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Container(',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  color: puntos >= 100 ? Colors.green : Colors.red,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  child: Text(',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '    puntos >= 100 ? "¡Ganaste!" : "Sigue intentando",',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  ),',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    ')',
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
                    color: Colors.orange.shade700,
                  ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('✓ Úsalo para condiciones simples y claras'),
                Text('✓ Mantén las expresiones cortas y legibles'),
                Text('✓ Perfecto para asignaciones condicionales'),
                Text('✓ Excelente para renderizado condicional en Flutter'),
                Text('✓ Evita anidar más de 2-3 niveles'),
                SizedBox(height: 8),
                Text('✗ No abuses del anidamiento excesivo'),
                Text('✗ Para lógica compleja, usa if-else tradicional'),
                Text('✗ No sacrifiques legibilidad por brevedad'),
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
                        'Consejo Pro',
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
                    'El operador ternario es como una pregunta rápida: "¿Esto es verdad? Entonces haz esto, si no, haz aquello." '
                    'Úsalo cuando la decisión sea simple y directa. Si te encuentras anidando más de 2-3 niveles, '
                    'probablemente sea mejor usar un if-else tradicional o un switch para mantener el código limpio.',
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

