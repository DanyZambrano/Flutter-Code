import 'package:flutter/material.dart';

class TypedefPage extends StatelessWidget {
  const TypedefPage({super.key});

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
              'Typedef en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Typedef (abreviatura de "type definition") es una característica de Dart que permite crear alias o nombres alternativos para tipos de datos, especialmente útil para tipos de funciones complejos.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            
            Text(
              '¿Qué es Typedef?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Typedef permite:\n'
              '• Crear alias para tipos complejos o largos\n'
              '• Hacer el código más legible y mantenible\n'
              '• Definir firmas de funciones reutilizables\n'
              '• Simplificar la documentación y el uso de callbacks\n'
              '• Mejorar la organización del código',
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
                  Text(
                    '💡 Nota Importante',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Typedef no crea un nuevo tipo, solo crea un alias para un tipo existente. Es como darle un apodo a algo que ya existe.',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '1. Sintaxis Básica',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'La sintaxis básica de typedef es simple:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Sintaxis básica
typedef NombreDelAlias = TipoOriginal;

// Ejemplo simple
typedef Entero = int;
typedef Texto = String;

// Uso
Entero edad = 25;
Texto nombre = "María";
print('Nombre: \$nombre, Edad: \$edad');''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '2. Typedef para Funciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'El uso más común de typedef es para definir tipos de funciones:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Definir un tipo de función
typedef Operacion = int Function(int a, int b);

// Funciones que cumplen con ese tipo
int sumar(int a, int b) {
  return a + b;
}

int restar(int a, int b) {
  return a - b;
}

int multiplicar(int a, int b) {
  return a * b;
}

// Función que acepta el typedef
int ejecutarOperacion(Operacion op, int x, int y) {
  return op(x, y);
}

// Uso
void main() {
  print(ejecutarOperacion(sumar, 10, 5));        // 15
  print(ejecutarOperacion(restar, 10, 5));       // 5
  print(ejecutarOperacion(multiplicar, 10, 5));  // 50
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '3. Typedef con Callbacks',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Typedef es muy útil para definir callbacks de forma clara:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Definir tipos de callbacks
typedef OnSuccess = void Function(String mensaje);
typedef OnError = void Function(String error);
typedef OnComplete = void Function();

class ApiService {
  void hacerPeticion({
    required OnSuccess onSuccess,
    required OnError onError,
    OnComplete? onComplete,
  }) {
    // Simulación de llamada API
    try {
      // Si todo va bien
      onSuccess("Datos recibidos correctamente");
    } catch (e) {
      // Si hay error
      onError("Error: \${e.toString()}");
    } finally {
      // Siempre se ejecuta
      if (onComplete != null) {
        onComplete();
      }
    }
  }
}

// Uso
void main() {
  final api = ApiService();
  
  api.hacerPeticion(
    onSuccess: (mensaje) {
      print('✅ \$mensaje');
    },
    onError: (error) {
      print('❌ \$error');
    },
    onComplete: () {
      print('🏁 Petición completada');
    },
  );
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '4. Typedef con Genéricos',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes combinar typedef con tipos genéricos para mayor flexibilidad:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Typedef genérico
typedef Comparador<T> = int Function(T a, T b);
typedef Transformador<T, R> = R Function(T input);
typedef Validador<T> = bool Function(T value);

// Uso con diferentes tipos
void main() {
  // Comparador de números
  Comparador<int> compararNumeros = (a, b) => a - b;
  print(compararNumeros(10, 5));  // 5
  
  // Comparador de strings
  Comparador<String> compararTextos = (a, b) => a.length - b.length;
  print(compararTextos("Hola", "Mundo"));  // 0
  
  // Transformador de int a String
  Transformador<int, String> numeroATexto = (num) => 'Número: \$num';
  print(numeroATexto(42));  // "Número: 42"
  
  // Validador de email
  Validador<String> esEmailValido = (email) {
    return email.contains('@') && email.contains('.');
  };
  print(esEmailValido("test@example.com"));  // true
  print(esEmailValido("invalido"));          // false
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '5. Typedef para Colecciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Simplifica tipos de colecciones complejas:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Sin typedef (complejo y largo)
Map<String, List<Map<String, dynamic>>> datosComplejos = {};

// Con typedef (limpio y claro)
typedef Usuario = Map<String, dynamic>;
typedef ListaUsuarios = List<Usuario>;
typedef BaseDatos = Map<String, ListaUsuarios>;

// Uso más legible
BaseDatos miBaseDatos = {
  'admins': [
    {'nombre': 'Carlos', 'edad': 30},
    {'nombre': 'Ana', 'edad': 28},
  ],
  'usuarios': [
    {'nombre': 'Pedro', 'edad': 25},
    {'nombre': 'Laura', 'edad': 27},
  ],
};

// Función con typedef
void imprimirUsuarios(ListaUsuarios usuarios) {
  for (var usuario in usuarios) {
    print('Nombre: \${usuario['nombre']}, Edad: \${usuario['edad']}');
  }
}

void main() {
  imprimirUsuarios(miBaseDatos['admins']!);
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '6. Typedef en Clases',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Uso de typedef dentro de clases para mejorar la organización:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Typedef para eventos
typedef EventHandler = void Function(String evento);
typedef DataProcessor<T> = T Function(T data);

class EventManager {
  final Map<String, List<EventHandler>> _listeners = {};
  
  // Agregar listener
  void addEventListener(String evento, EventHandler handler) {
    if (!_listeners.containsKey(evento)) {
      _listeners[evento] = [];
    }
    _listeners[evento]!.add(handler);
  }
  
  // Emitir evento
  void emitir(String evento, String datos) {
    if (_listeners.containsKey(evento)) {
      for (var handler in _listeners[evento]!) {
        handler(datos);
      }
    }
  }
}

class Procesador<T> {
  final DataProcessor<T> procesador;
  
  Procesador(this.procesador);
  
  T ejecutar(T datos) {
    return procesador(datos);
  }
}

// Uso
void main() {
  // Event Manager
  final eventos = EventManager();
  
  eventos.addEventListener('login', (datos) {
    print('Usuario logueado: \$datos');
  });
  
  eventos.addEventListener('logout', (datos) {
    print('Usuario deslogueado: \$datos');
  });
  
  eventos.emitir('login', 'usuario@example.com');
  eventos.emitir('logout', 'usuario@example.com');
  
  // Procesador
  final duplicador = Procesador<int>((num) => num * 2);
  print('Resultado: \${duplicador.ejecutar(5)}');  // 10
  
  final mayusculas = Procesador<String>((texto) => texto.toUpperCase());
  print('Resultado: \${mayusculas.ejecutar("hola")}');  // HOLA
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '7. Typedef vs Type Alias',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'En Dart moderno, puedes usar typedef de dos formas:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Forma antigua (solo para funciones)
typedef int Operacion(int a, int b);

// Forma moderna (recomendada - más flexible)
typedef Operacion = int Function(int a, int b);

// La forma moderna también funciona para otros tipos
typedef ListaEnteros = List<int>;
typedef MapaDatos = Map<String, dynamic>;
typedef ConjuntoTextos = Set<String>;

// Incluso para tipos personalizados
class Usuario {
  String nombre;
  int edad;
  Usuario(this.nombre, this.edad);
}

typedef ListaUsuarios = List<Usuario>;
typedef CacheUsuarios = Map<String, Usuario>;

// Uso
void main() {
  ListaUsuarios usuarios = [
    Usuario('Ana', 25),
    Usuario('Juan', 30),
  ];
  
  CacheUsuarios cache = {
    'user1': Usuario('Pedro', 28),
    'user2': Usuario('María', 32),
  };
  
  print('Total usuarios: \${usuarios.length}');
  print('Usuarios en caché: \${cache.length}');
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '8. Ejemplo Práctico: Sistema de Filtros',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un ejemplo completo que combina varios conceptos:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Typedef para el sistema
typedef Filtro<T> = bool Function(T item);
typedef Mapeador<T, R> = R Function(T item);
typedef Reductor<T, R> = R Function(R acumulador, T item);

class Producto {
  final String nombre;
  final double precio;
  final String categoria;
  
  Producto(this.nombre, this.precio, this.categoria);
  
  @override
  String toString() => '\$nombre (\$precio) - \$categoria';
}

class ListaProcesable<T> {
  final List<T> items;
  
  ListaProcesable(this.items);
  
  // Filtrar con typedef
  ListaProcesable<T> filtrar(Filtro<T> filtro) {
    return ListaProcesable(items.where(filtro).toList());
  }
  
  // Mapear con typedef
  ListaProcesable<R> mapear<R>(Mapeador<T, R> mapeador) {
    return ListaProcesable(items.map(mapeador).toList());
  }
  
  // Reducir con typedef
  R reducir<R>(R inicial, Reductor<T, R> reductor) {
    return items.fold(inicial, reductor);
  }
}

void main() {
  // Crear lista de productos
  final productos = ListaProcesable<Producto>([
    Producto('Laptop', 1200.0, 'Electrónica'),
    Producto('Mouse', 25.0, 'Electrónica'),
    Producto('Teclado', 75.0, 'Electrónica'),
    Producto('Silla', 200.0, 'Muebles'),
    Producto('Escritorio', 350.0, 'Muebles'),
  ]);
  
  // Filtrar productos de electrónica
  final electronica = productos.filtrar(
    (p) => p.categoria == 'Electrónica'
  );
  
  print('Productos de Electrónica:');
  for (var p in electronica.items) {
    print('  - \$p');
  }
  
  // Filtrar productos caros (> 100)
  final caros = productos.filtrar((p) => p.precio > 100);
  
  print('\\nProductos caros:');
  for (var p in caros.items) {
    print('  - \$p');
  }
  
  // Mapear a solo nombres
  final nombres = productos.mapear((p) => p.nombre);
  
  print('\\nNombres de productos:');
  for (var n in nombres.items) {
    print('  - \$n');
  }
  
  // Calcular precio total
  final total = productos.reducir<double>(
    0.0,
    (acum, producto) => acum + producto.precio
  );
  
  print('\\nPrecio total: \\\$\$total');
  
  // Ejemplo más complejo: filtrar, mapear y reducir
  final totalElectronica = productos
      .filtrar((p) => p.categoria == 'Electrónica')
      .reducir<double>(0.0, (acum, p) => acum + p.precio);
  
  print('Total en Electrónica: \\\$\$totalElectronica');
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '9. Ejemplo con Flutter',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Typedef es muy útil en Flutter para callbacks de widgets:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                '''// Typedef para callbacks de UI
typedef OnButtonPressed = void Function();
typedef OnTextChanged = void Function(String text);
typedef OnValueSelected<T> = void Function(T value);
typedef WidgetBuilder = Widget Function(BuildContext context);

// Widget personalizado con typedef
class BotonPersonalizado extends StatelessWidget {
  final String texto;
  final OnButtonPressed onPressed;
  final Color? color;
  
  const BotonPersonalizado({
    Key? key,
    required this.texto,
    required this.onPressed,
    this.color,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.blue,
      ),
      child: Text(texto),
    );
  }
}

// Campo de texto con typedef
class CampoTexto extends StatelessWidget {
  final String label;
  final OnTextChanged onChanged;
  
  const CampoTexto({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      onChanged: onChanged,
    );
  }
}

// Selector genérico
class SelectorGenerico<T> extends StatelessWidget {
  final List<T> opciones;
  final OnValueSelected<T> onSelected;
  final String Function(T) mostrarTexto;
  
  const SelectorGenerico({
    Key? key,
    required this.opciones,
    required this.onSelected,
    required this.mostrarTexto,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      items: opciones.map((opcion) {
        return DropdownMenuItem<T>(
          value: opcion,
          child: Text(mostrarTexto(opcion)),
        );
      }).toList(),
      onChanged: (valor) {
        if (valor != null) onSelected(valor);
      },
    );
  }
}

// Uso en una página
class EjemploPage extends StatefulWidget {
  @override
  _EjemploPageState createState() => _EjemploPageState();
}

class _EjemploPageState extends State<EjemploPage> {
  String texto = '';
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CampoTexto(
          label: 'Ingresa tu nombre',
          onChanged: (nuevoTexto) {
            setState(() {
              texto = nuevoTexto;
            });
          },
        ),
        BotonPersonalizado(
          texto: 'Guardar',
          onPressed: () {
            print('Guardando: \$texto');
          },
          color: Colors.green,
        ),
        SelectorGenerico<String>(
          opciones: ['Opción 1', 'Opción 2', 'Opción 3'],
          onSelected: (opcion) {
            print('Seleccionado: \$opcion');
          },
          mostrarTexto: (opcion) => opcion,
        ),
      ],
    );
  }
}''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              'Ventajas de Usar Typedef',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
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
                  Text(
                    '✅ Legibilidad',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                  Text(
                    'El código es más fácil de leer y entender',
                    style: TextStyle(color: Colors.green.shade900),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '✅ Mantenibilidad',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                  Text(
                    'Cambiar un tipo en un lugar actualiza todo el código que lo usa',
                    style: TextStyle(color: Colors.green.shade900),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '✅ Documentación',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                  Text(
                    'Los nombres descriptivos sirven como documentación del código',
                    style: TextStyle(color: Colors.green.shade900),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '✅ Reutilización',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                  Text(
                    'Define una vez y usa en múltiples lugares',
                    style: TextStyle(color: Colors.green.shade900),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '✅ Abstracción',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                    ),
                  ),
                  Text(
                    'Oculta detalles de implementación complejos',
                    style: TextStyle(color: Colors.green.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              'Cuándo Usar Typedef',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '👍 Buenos casos de uso:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• Callbacks y funciones de eventos\n'
                    '• Tipos de funciones que se repiten múltiples veces\n'
                    '• Colecciones complejas o anidadas\n'
                    '• Contratos de API o interfaces\n'
                    '• Cuando el nombre del tipo mejora la comprensión',
                    style: TextStyle(color: Colors.orange.shade900),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '👎 Evitar typedef cuando:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• El tipo solo se usa una vez\n'
                    '• El alias no mejora la claridad\n'
                    '• El nombre original ya es suficientemente claro\n'
                    '• Agregaría complejidad innecesaria',
                    style: TextStyle(color: Colors.orange.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              'Resumen',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.purple.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '📝 Puntos Clave:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• Typedef crea alias para tipos existentes\n'
                    '• Especialmente útil para tipos de funciones\n'
                    '• Mejora la legibilidad y mantenibilidad del código\n'
                    '• Se puede usar con tipos genéricos\n'
                    '• Es una herramienta de documentación poderosa\n'
                    '• No crea nuevos tipos, solo nombres alternativos\n'
                    '• La forma moderna (con =) es más flexible que la antigua',
                    style: TextStyle(color: Colors.purple.shade900),
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

