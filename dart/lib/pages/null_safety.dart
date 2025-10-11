import 'package:flutter/material.dart';

class NullSafetyPage extends StatelessWidget {
  const NullSafetyPage({super.key});

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
              'Null Safety en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Null Safety es una característica fundamental de Dart que ayuda a prevenir errores de referencia nula (null reference errors), uno de los tipos de error más comunes en programación.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '¿Qué es Null Safety?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Null Safety (Seguridad Nula) es un sistema de tipos que distingue entre valores que pueden ser nulos y valores que no pueden serlo. Esto significa que el compilador puede detectar errores potenciales antes de ejecutar el código, haciendo tus aplicaciones más seguras y robustas.',
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
                    'Con Null Safety, todas las variables son no nulas por defecto. Si quieres que una variable pueda ser nula, debes declararlo explícitamente.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Tipos en Null Safety',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'En Dart con Null Safety, existen dos categorías de tipos:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Tipos No Nulos (Non-nullable)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String nombre = "Juan";  // NO puede ser null\nint edad = 25;           // NO puede ser null',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '2. Tipos Nulos (Nullable) - con el operador ?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String? nombre = null;   // SÍ puede ser null\nint? edad = null;        // SÍ puede ser null',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Uso y Beneficios',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '• Previene errores en tiempo de ejecución relacionados con valores nulos\n'
              '• El código es más expresivo y claro sobre qué puede ser null\n'
              '• El compilador te ayuda a manejar los casos nulos antes de ejecutar\n'
              '• Reduce la cantidad de validaciones defensivas en el código\n'
              '• Mejora la calidad y confiabilidad del software',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '📚 Ejemplo Sencillo',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.green.shade700,
              ),
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
                children: [
                  Text(
                    '// Variables NO nulas',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String nombre = "María";',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int edad = 30;',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '// nombre = null;  // ❌ ERROR: no puede ser null',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '// Variables NULAS (nullable)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String? apellido = null;  // ✅ OK',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int? telefono;            // ✅ OK (null por defecto)',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '// Acceso seguro con if',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'if (apellido != null) {\n'
                    '  print(apellido.length);  // Seguro\n'
                    '}',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '🚀 Ejemplo Avanzado: Operadores de Null Safety',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.purple.shade700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Dart proporciona operadores especiales para trabajar con valores nulos de manera elegante:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '// 1. Operador ?. (null-aware access)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String? nombre;\n'
                    'int? longitud = nombre?.length;  // null si nombre es null',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '// 2. Operador ?? (if-null)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String? usuario;\n'
                    'String nombreFinal = usuario ?? "Invitado";\n'
                    'print(nombreFinal);  // "Invitado"',
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '// 3. Operador ??= (asignación si null)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String? mensaje;\n'
                    'mensaje ??= "Hola Mundo";  // Asigna solo si es null\n'
                    'print(mensaje);  // "Hola Mundo"',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '// 4. Operador ! (null assertion)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'String? texto = "Dart";\n'
                    'int longitud = texto!.length;  // Afirma que NO es null\n'
                    '// ⚠️ Cuidado: lanza error si texto es null',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '// 5. Operador ?.. (cascade null-aware)',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'monospace',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'List<int>? numeros = [1, 2, 3];\n'
                    'numeros?..\n'
                    '  ..add(4)\n'
                    '  ..add(5);  // Solo ejecuta si numeros no es null',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '🔥 Caso de Uso Avanzado: Función con Null Safety',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.orange.shade700,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'class Usuario {\n'
                '  String nombre;\n'
                '  String? email;  // Opcional\n'
                '  int? edad;      // Opcional\n'
                '\n'
                '  Usuario(this.nombre, {this.email, this.edad});\n'
                '\n'
                '  // Método que maneja valores nulos\n'
                '  String obtenerInfo() {\n'
                '    String info = "Nombre: \$nombre";\n'
                '    \n'
                '    // Uso de operador ??\n'
                '    info += "\\nEmail: \${email ?? \'No proporcionado\'}";\n'
                '    \n'
                '    // Uso de operador ?.\n'
                '    int? anioNacimiento = edad != null \n'
                '        ? DateTime.now().year - edad! \n'
                '        : null;\n'
                '    \n'
                '    info += "\\nAño: \${anioNacimiento ?? \'Desconocido\'}";\n'
                '    \n'
                '    return info;\n'
                '  }\n'
                '\n'
                '  // Método con late para inicialización tardía\n'
                '  late String nombreCompleto = _calcularNombre();\n'
                '  \n'
                '  String _calcularNombre() {\n'
                '    String usuario = email?.split("@").first ?? "usuario";\n'
                '    return "\$nombre (\$usuario)";\n'
                '  }\n'
                '}\n'
                '\n'
                '// Uso:\n'
                'void main() {\n'
                '  Usuario usuario1 = Usuario("Ana", email: "ana@email.com", edad: 25);\n'
                '  Usuario usuario2 = Usuario("Carlos");  // Sin email ni edad\n'
                '  \n'
                '  print(usuario1.obtenerInfo());\n'
                '  print(usuario2.obtenerInfo());\n'
                '}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'monospace',
                  fontSize: 13,
                  height: 1.5,
                ),
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
                    '1. Prefiere tipos no nulos siempre que sea posible\n'
                    '2. Usa ? solo cuando el valor realmente pueda ser null\n'
                    '3. Evita usar ! (null assertion) a menos que estés 100% seguro\n'
                    '4. Utiliza ?? para proporcionar valores por defecto\n'
                    '5. Usa ?. para acceso seguro a propiedades\n'
                    '6. Considera usar late para inicialización tardía\n'
                    '7. Valida valores nulos en los límites de tu aplicación',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
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
            NullSafetyDemo(),
          ],
        ),
      ),
    );
  }
}

class NullSafetyDemo extends StatefulWidget {
  const NullSafetyDemo({super.key});

  @override
  State<NullSafetyDemo> createState() => _NullSafetyDemoState();
}

class _NullSafetyDemoState extends State<NullSafetyDemo> {
  String? valorNullable;
  String resultado = '';

  void probarOperadorNullAware() {
    setState(() {
      int? longitud = valorNullable?.length;
      resultado = 'Usando ?. : ${longitud ?? "null (no hay valor)"}';
    });
  }

  void probarOperadorIfNull() {
    setState(() {
      String valor = valorNullable ?? 'Valor por defecto';
      resultado = 'Usando ?? : "$valor"';
    });
  }

  void probarNullAssertion() {
    setState(() {
      try {
        String valor = valorNullable!;
        resultado = 'Usando ! : "$valor" (¡Éxito!)';
      } catch (e) {
        resultado = '❌ Error: No se puede usar ! en un valor null';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Demo Interactiva de Null Safety',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Valor nullable actual: ${valorNullable == null ? "null" : '"$valorNullable"'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: valorNullable == null ? Colors.red : Colors.green,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ingresa un valor (o déjalo vacío para null)',
                border: OutlineInputBorder(),
                hintText: 'Escribe algo...',
              ),
              onChanged: (value) {
                setState(() {
                  valorNullable = value.isEmpty ? null : value;
                  resultado = '';
                });
              },
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton.icon(
                  onPressed: probarOperadorNullAware,
                  icon: Icon(Icons.question_mark),
                  label: Text('Probar ?.'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: probarOperadorIfNull,
                  icon: Icon(Icons.help_outline),
                  label: Text('Probar ??'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: probarNullAssertion,
                  icon: Icon(Icons.warning),
                  label: Text('Probar !'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (resultado.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: resultado.contains('Error') 
                      ? Colors.red.shade50 
                      : Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: resultado.contains('Error')
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      resultado.contains('Error') 
                          ? Icons.error 
                          : Icons.check_circle,
                      color: resultado.contains('Error')
                          ? Colors.red
                          : Colors.green,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        resultado,
                        style: TextStyle(
                          color: resultado.contains('Error')
                              ? Colors.red.shade900
                              : Colors.green.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

