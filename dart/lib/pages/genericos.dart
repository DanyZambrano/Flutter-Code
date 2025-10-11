import 'package:flutter/material.dart';

class GenericsPage extends StatelessWidget {
  const GenericsPage({super.key});

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
              '¿Qué son los Genéricos?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Los genéricos (Generics) son una característica que permite escribir código '
              'flexible y reutilizable que puede trabajar con diferentes tipos de datos, '
              'manteniendo la seguridad de tipos en tiempo de compilación.\n\n'
              'Se representan usando parámetros de tipo entre corchetes angulares <T>, '
              'donde T (o cualquier nombre) representa un tipo que se especificará más tarde.',
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
                Text('• Crear clases, funciones e interfaces reutilizables'),
                Text('• Evitar la duplicación de código'),
                Text('• Trabajar con colecciones tipadas (List<T>, Map<K,V>, etc.)'),
                Text('• Mantener la seguridad de tipos sin perder flexibilidad'),
                Text('• Implementar estructuras de datos genéricas'),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Utilidad Principal',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.blue.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Los genéricos permiten escribir código una sola vez que funcione con múltiples '
              'tipos, evitando errores en tiempo de ejecución al detectar problemas de tipos '
              'durante la compilación. Esto hace que el código sea más seguro, mantenible y eficiente.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '📝 Ejemplo Fácil: Caja Genérica',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.green.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Una clase simple que puede almacenar cualquier tipo de valor:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            _buildCodeBlock(
              '// Clase genérica simple\n'
              'class Caja<T> {\n'
              '  T contenido;\n'
              '  \n'
              '  Caja(this.contenido);\n'
              '  \n'
              '  T obtenerContenido() => contenido;\n'
              '  \n'
              '  void mostrarTipo() {\n'
              '    print("Tipo: \${T}");\n'
              '  }\n'
              '}',
            ),
            const SizedBox(height: 16),
            Text(
              'Resultado en ejecución:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            _EjemploFacil(),
            const SizedBox(height: 32),
            Text(
              '🚀 Ejemplo Avanzado: Cache Genérico con Restricciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.orange.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Un sistema de cache que solo acepta objetos que implementen una interfaz específica:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            _buildCodeBlock(
              '// Interfaz base\n'
              'abstract class Identificable {\n'
              '  String get id;\n'
              '}\n\n'
              '// Cache genérico con restricción\n'
              'class Cache<T extends Identificable> {\n'
              '  final Map<String, T> _datos = {};\n'
              '  \n'
              '  void guardar(T item) {\n'
              '    _datos[item.id] = item;\n'
              '  }\n'
              '  \n'
              '  T? obtener(String id) => _datos[id];\n'
              '  \n'
              '  List<T> obtenerTodos() => _datos.values.toList();\n'
              '  \n'
              '  int get cantidad => _datos.length;\n'
              '  \n'
              '  void limpiar() => _datos.clear();\n'
              '}\n\n'
              '// Clases que implementan Identificable\n'
              'class Usuario implements Identificable {\n'
              '  @override\n'
              '  final String id;\n'
              '  final String nombre;\n'
              '  \n'
              '  Usuario(this.id, this.nombre);\n'
              '}\n\n'
              'class Producto implements Identificable {\n'
              '  @override\n'
              '  final String id;\n'
              '  final String nombre;\n'
              '  final double precio;\n'
              '  \n'
              '  Producto(this.id, this.nombre, this.precio);\n'
              '}',
            ),
            const SizedBox(height: 16),
            Text(
              'Demostración interactiva:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            _EjemploAvanzado(),
            const SizedBox(height: 32),
            Text(
              '💡 Puntos Clave',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.deepOrange.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('• T, E, K, V son nombres comunes para tipos genéricos'),
                Text('• Puedes usar "extends" para restringir tipos (T extends Clase)'),
                Text('• Los genéricos se resuelven en tiempo de compilación'),
                Text('• Mejoran la legibilidad y mantenibilidad del código'),
                Text('• Son fundamentales en colecciones de Dart (List, Map, Set)'),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildCodeBlock(String code) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        code,
        style: const TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
          color: Colors.white,
          height: 1.5,
        ),
      ),
    );
  }
}

// ===== EJEMPLO FÁCIL =====
class _EjemploFacil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Crear cajas con diferentes tipos
    final cajaString = Caja<String>('Hola Dart!');
    final cajaInt = Caja<int>(42);
    final cajaDouble = Caja<double>(3.14);
    final cajaBool = Caja<bool>(true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildResultRow('Caja<String>', cajaString.obtenerContenido().toString(), Colors.blue),
        const SizedBox(height: 8),
        _buildResultRow('Caja<int>', cajaInt.obtenerContenido().toString(), Colors.orange),
        const SizedBox(height: 8),
        _buildResultRow('Caja<double>', cajaDouble.obtenerContenido().toString(), Colors.purple),
        const SizedBox(height: 8),
        _buildResultRow('Caja<bool>', cajaBool.obtenerContenido().toString(), Colors.teal),
      ],
    );
  }

  Widget _buildResultRow(String tipo, String valor, MaterialColor color) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            tipo,
            style: TextStyle(
              fontFamily: 'monospace',
              fontWeight: FontWeight.bold,
              color: color.shade700,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Icon(Icons.arrow_forward, size: 16),
        const SizedBox(width: 12),
        Text(
          valor,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// Clase para el ejemplo fácil
class Caja<T> {
  T contenido;

  Caja(this.contenido);

  T obtenerContenido() => contenido;

  void mostrarTipo() {
    print('Tipo: $T');
  }
}

// ===== EJEMPLO AVANZADO =====

// Interfaz base
abstract class Identificable {
  String get id;
}

// Cache genérico con restricción
class Cache<T extends Identificable> {
  final Map<String, T> _datos = {};

  void guardar(T item) {
    _datos[item.id] = item;
  }

  T? obtener(String id) => _datos[id];

  List<T> obtenerTodos() => _datos.values.toList();

  int get cantidad => _datos.length;

  void limpiar() => _datos.clear();
}

// Clases que implementan Identificable
class Usuario implements Identificable {
  @override
  final String id;
  final String nombre;

  Usuario(this.id, this.nombre);
}

class Producto implements Identificable {
  @override
  final String id;
  final String nombre;
  final double precio;

  Producto(this.id, this.nombre, this.precio);
}

// Widget interactivo para el ejemplo avanzado
class _EjemploAvanzado extends StatefulWidget {
  @override
  State<_EjemploAvanzado> createState() => _EjemploAvanzadoState();
}

class _EjemploAvanzadoState extends State<_EjemploAvanzado> {
  final Cache<Usuario> cacheUsuarios = Cache<Usuario>();
  final Cache<Producto> cacheProductos = Cache<Producto>();
  bool mostrandoUsuarios = true;

  @override
  void initState() {
    super.initState();
    _inicializarDatos();
  }

  void _inicializarDatos() {
    // Agregar usuarios
    cacheUsuarios.guardar(Usuario('1', 'Ana García'));
    cacheUsuarios.guardar(Usuario('2', 'Carlos López'));
    cacheUsuarios.guardar(Usuario('3', 'María Rodríguez'));

    // Agregar productos
    cacheProductos.guardar(Producto('P1', 'Laptop', 899.99));
    cacheProductos.guardar(Producto('P2', 'Mouse', 29.99));
    cacheProductos.guardar(Producto('P3', 'Teclado', 79.99));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Selector de cache
        Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => setState(() => mostrandoUsuarios = true),
                icon: const Icon(Icons.people, size: 18),
                label: Text('Usuarios (${cacheUsuarios.cantidad})'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: mostrandoUsuarios ? Colors.blue.shade600 : Colors.grey.shade300,
                  foregroundColor: mostrandoUsuarios ? Colors.white : Colors.black87,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => setState(() => mostrandoUsuarios = false),
                icon: const Icon(Icons.shopping_bag, size: 18),
                label: Text('Productos (${cacheProductos.cantidad})'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: !mostrandoUsuarios ? Colors.orange.shade600 : Colors.grey.shade300,
                  foregroundColor: !mostrandoUsuarios ? Colors.white : Colors.black87,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        
        // Mostrar contenido del cache
        if (mostrandoUsuarios)
          ..._buildUsuariosList()
        else
          ..._buildProductosList(),
      ],
    );
  }

  List<Widget> _buildUsuariosList() {
    final usuarios = cacheUsuarios.obtenerTodos();
    return usuarios.map((usuario) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade600,
                child: Text(
                  usuario.nombre[0],
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    usuario.nombre,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'ID: ${usuario.id}',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  List<Widget> _buildProductosList() {
    final productos = cacheProductos.obtenerTodos();
    return productos.map((producto) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.orange.shade600,
                child: const Icon(Icons.shopping_cart, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      producto.nombre,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'ID: ${producto.id}',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '\$${producto.precio.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}

