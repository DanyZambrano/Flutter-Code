import 'package:flutter/material.dart';

class StylePage extends StatelessWidget {
  const StylePage({super.key});

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
              'Dart Style Guide',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'El estilo de código en Dart es fundamental para mantener código legible, consistente y mantenible. Dart tiene convenciones específicas que deben seguirse para escribir código profesional.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            
            Text(
              '¿Qué es el Estilo de Código?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'El estilo de código es:\n'
              '• Un conjunto de convenciones para escribir código\n'
              '• Fundamental para la legibilidad y mantenibilidad\n'
              '• Esencial para el trabajo en equipo\n'
              '• Ayuda a prevenir errores comunes\n'
              '• Mejora la calidad del código',
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
                    '💡 Concepto Clave',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Dart tiene un estilo oficial definido por Google que promueve código limpio, legible y consistente en toda la comunidad.',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '1. Convenciones de Nomenclatura',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Reglas fundamentales para nombrar variables, funciones y clases:',
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
                '''// ✅ BUENO - Variables y funciones en camelCase
String nombreUsuario = 'Juan';
int edadMaxima = 25;
bool esValido = true;

void calcularPromedio() {
  // Función en camelCase
}

// ✅ BUENO - Clases en PascalCase
class UsuarioModelo {
  final String nombre;
  final int edad;
  
  UsuarioModelo(this.nombre, this.edad);
}

// ✅ BUENO - Constantes en SCREAMING_SNAKE_CASE
const String API_BASE_URL = 'https://api.ejemplo.com';
const int MAX_INTENTOS = 3;

// ✅ BUENO - Archivos en snake_case
// usuario_modelo.dart
// servicio_api.dart
// utilidades_validacion.dart

// ❌ MALO - Nombres confusos o inconsistentes
String NombreUsuario = 'Juan';  // PascalCase para variable
int edad_maxima = 25;           // snake_case para variable
bool ESVALIDO = true;           // SCREAMING para variable local

void CalcularPromedio() {       // PascalCase para función
  // ...
}

// ❌ MALO - Nombres poco descriptivos
String n = 'Juan';             // Muy corto
int x = 25;                    // No descriptivo
bool b = true;                 // Abreviación confusa''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '2. Formato y Espaciado',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Reglas de formato para mantener código limpio y legible:',
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
                '''// ✅ BUENO - Espaciado consistente
class Calculadora {
  // Dos espacios de indentación
  int sumar(int a, int b) {
    return a + b;
  }
  
  // Línea en blanco entre métodos
  int restar(int a, int b) {
    return a - b;
  }
}

// ✅ BUENO - Espaciado en operadores
int resultado = numero1 + numero2;
bool esValido = (edad >= 18) && (nombre.isNotEmpty);

// ✅ BUENO - Espaciado en listas
List<String> colores = [
  'rojo',
  'verde',
  'azul',
];

// ✅ BUENO - Espaciado en parámetros
void mostrarMensaje(
  String titulo,
  String mensaje, {
  bool esImportante = false,
}) {
  print('\$titulo: \$mensaje');
}

// ❌ MALO - Espaciado inconsistente
class Calculadora{
int sumar(int a,int b){
return a+b;
}
int restar(int a, int b){
return a-b;
}
}

// ❌ MALO - Sin espaciado en operadores
int resultado=numero1+numero2;
bool esValido=(edad>=18)&&(nombre.isNotEmpty);

// ❌ MALO - Listas mal formateadas
List<String> colores = ['rojo','verde','azul'];

// ❌ MALO - Parámetros mal formateados
void mostrarMensaje(String titulo,String mensaje,{bool esImportante=false}){
  print('\$titulo: \$mensaje');
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
              '3. Comentarios y Documentación',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Cómo escribir comentarios efectivos y documentación clara:',
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
                '''// ✅ BUENO - Comentarios de documentación
/// Calcula el área de un círculo dado su radio.
/// 
/// [radio] debe ser un número positivo.
/// Retorna el área calculada en unidades cuadradas.
/// 
/// Ejemplo:
/// ```dart
/// double area = calcularAreaCirculo(5.0);
/// print(area); // 78.54
/// ```
double calcularAreaCirculo(double radio) {
  if (radio <= 0) {
    throw ArgumentError('El radio debe ser positivo');
  }
  return 3.14159 * radio * radio;
}

// ✅ BUENO - Comentarios explicativos
class ProcesadorArchivos {
  // Cache para evitar reprocesar archivos ya leídos
  final Map<String, String> _cache = {};
  
  String procesarArchivo(String ruta) {
    // Verificar si ya está en cache
    if (_cache.containsKey(ruta)) {
      return _cache[ruta]!;
    }
    
    // Procesar archivo y guardar en cache
    String contenido = _leerArchivo(ruta);
    _cache[ruta] = contenido;
    return contenido;
  }
  
  String _leerArchivo(String ruta) {
    // TODO: Implementar lectura de archivo
    return '';
  }
}

// ❌ MALO - Comentarios obvios o innecesarios
// Incrementar contador
contador++;

// Asignar valor
String nombre = 'Juan';

// ❌ MALO - Comentarios desactualizados
// Esta función suma dos números
int multiplicar(int a, int b) {
  return a * b; // Comentario incorrecto
}

// ❌ MALO - Sin documentación
double calc(double r) {
  return 3.14159 * r * r;
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
              '4. Estructura de Clases y Métodos',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Organización y estructura de clases siguiendo las convenciones:',
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
                '''// ✅ BUENO - Estructura de clase ordenada
class Usuario {
  // 1. Variables de instancia
  final String nombre;
  final String email;
  final int edad;
  
  // 2. Variables estáticas
  static const int edadMinima = 13;
  static final List<String> dominiosValidos = ['gmail.com', 'yahoo.com'];
  
  // 3. Constructor
  Usuario({
    required this.nombre,
    required this.email,
    required this.edad,
  }) : assert(edad >= edadMinima, 'La edad debe ser mayor a \$edadMinima');
  
  // 4. Getters
  bool get esMayorDeEdad => edad >= 18;
  String get iniciales => nombre.split(' ').map((e) => e[0]).join();
  
  // 5. Métodos de instancia
  void actualizarEmail(String nuevoEmail) {
    if (!_esEmailValido(nuevoEmail)) {
      throw ArgumentError('Email inválido');
    }
    // Actualizar email
  }
  
  // 6. Métodos privados
  bool _esEmailValido(String email) {
    return email.contains('@') && dominiosValidos.any((d) => email.endsWith(d));
  }
  
  // 7. Métodos estáticos
  static Usuario crearAdmin() {
    return Usuario(
      nombre: 'Administrador',
      email: 'admin@sistema.com',
      edad: 25,
    );
  }
  
  // 8. Override de toString
  @override
  String toString() => 'Usuario(nombre: \$nombre, email: \$email, edad: \$edad)';
}

// ❌ MALO - Estructura desordenada
class Usuario {
  static Usuario crearAdmin() { return Usuario('Admin', 'admin@test.com', 25); }
  final String nombre;
  void actualizarEmail(String nuevoEmail) { /* ... */ }
  final String email;
  bool _esEmailValido(String email) { return true; }
  final int edad;
  Usuario(this.nombre, this.email, this.edad);
  bool get esMayorDeEdad => edad >= 18;
  static const int edadMinima = 13;
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
              '5. Manejo de Errores y Excepciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Convenciones para manejo de errores y excepciones:',
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
                '''// ✅ BUENO - Manejo de errores explícito
class ServicioArchivos {
  Future<String> leerArchivo(String ruta) async {
    try {
      final archivo = File(ruta);
      if (!await archivo.exists()) {
        throw FileSystemException('Archivo no encontrado', ruta);
      }
      return await archivo.readAsString();
    } on FileSystemException catch (e) {
      // Log del error específico
      print('Error de sistema de archivos: \$e');
      rethrow;
    } catch (e) {
      // Error inesperado
      print('Error inesperado: \$e');
      throw Exception('No se pudo leer el archivo');
    }
  }
  
  // ✅ BUENO - Validación de parámetros
  void validarParametros(String? nombre, int? edad) {
    if (nombre == null || nombre.isEmpty) {
      throw ArgumentError('El nombre no puede estar vacío');
    }
    if (edad == null || edad < 0) {
      throw ArgumentError('La edad debe ser un número positivo');
    }
  }
  
  // ✅ BUENO - Resultado opcional para errores esperados
  String? buscarUsuario(String id) {
    try {
      return _baseDatos.buscar(id);
    } catch (e) {
      // Error esperado, retornar null
      return null;
    }
  }
}

// ❌ MALO - Ignorar errores
Future<String> leerArchivo(String ruta) async {
  final archivo = File(ruta);
  return await archivo.readAsString(); // Puede lanzar excepción
}

// ❌ MALO - Catch genérico sin manejo
Future<String> leerArchivo(String ruta) async {
  try {
    final archivo = File(ruta);
    return await archivo.readAsString();
  } catch (e) {
    // No hacer nada con el error
    return '';
  }
}

// ❌ MALO - No validar parámetros
void procesarUsuario(String? nombre, int? edad) {
  // Usar directamente sin validar
  print('Usuario: \$nombre, Edad: \$edad');
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
              '6. Uso de Null Safety',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Convenciones para el uso correcto de null safety:',
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
                '''// ✅ BUENO - Null safety explícito
class Usuario {
  final String nombre;
  final String? telefono; // Opcional
  final int edad;
  
  Usuario({
    required this.nombre,
    this.telefono, // Opcional
    required this.edad,
  });
  
  // ✅ BUENO - Manejo seguro de nulls
  String obtenerTelefono() {
    return telefono ?? 'No disponible';
  }
  
  // ✅ BUENO - Validación de null
  bool tieneTelefono() {
    return telefono != null && telefono!.isNotEmpty;
  }
  
  // ✅ BUENO - Uso de late para inicialización diferida
  late String _token;
  
  void inicializarToken(String token) {
    _token = token;
  }
  
  // ✅ BUENO - Uso de required para parámetros obligatorios
  void actualizarPerfil({
    required String nombre,
    String? telefono,
    required int edad,
  }) {
    // Actualizar perfil
  }
}

// ❌ MALO - Uso incorrecto de null safety
class Usuario {
  String nombre; // Debería ser final
  String telefono; // Debería ser String?
  int edad;
  
  Usuario(this.nombre, this.telefono, this.edad);
  
  // ❌ MALO - No manejar nulls
  String obtenerTelefono() {
    return telefono; // Puede ser null
  }
  
  // ❌ MALO - Uso innecesario de !
  String obtenerNombre() {
    return nombre!; // nombre no es nullable
  }
}

// ✅ BUENO - Uso de operadores null-aware
void procesarUsuario(Usuario? usuario) {
  // Usar ?. para acceso seguro
  usuario?.actualizarPerfil(
    nombre: 'Nuevo nombre',
    edad: 25,
  );
  
  // Usar ?? para valores por defecto
  String nombre = usuario?.nombre ?? 'Usuario anónimo';
  
  // Usar ??= para asignación condicional
  usuario ??= Usuario.crearDefault();
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
              '7. Herramientas de Formato',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Herramientas automáticas para mantener el estilo de código:',
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
                '''# dart format - Formatear código automáticamente
dart format lib/

# Formatear archivo específico
dart format lib/pages/usuario.dart

# Verificar formato sin cambiar archivos
dart format --set-exit-if-changed lib/

# dart analyze - Análisis estático de código
dart analyze

# Análisis con información detallada
dart analyze --verbose

# dart fix - Aplicar correcciones automáticas
dart fix

# Aplicar correcciones específicas
dart fix --apply

# flutter analyze - Para proyectos Flutter
flutter analyze

# flutter format - Formatear código Flutter
flutter format lib/

# Configuración en analysis_options.yaml
analyzer:
  exclude:
    - "**/*.g.dart"
    - "**/*.freezed.dart"
  
  strong-mode:
    implicit-casts: false
    implicit-dynamic: false

linter:
  rules:
    # Reglas de estilo
    - prefer_single_quotes
    - prefer_const_constructors
    - prefer_const_literals_to_create_immutables
    
    # Reglas de nomenclatura
    - non_constant_identifier_names
    - camel_case_types
    - camel_case_extensions
    
    # Reglas de documentación
    - public_member_api_docs
    - package_api_docs
    
    # Reglas de null safety
    - avoid_null_checks_in_equality_operators
    - prefer_null_aware_operators

# Configuración en .vscode/settings.json
{
  "dart.lineLength": 80,
  "dart.insertArgumentPlaceholders": false,
  "dart.previewFlutterUiGuides": true,
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll": true
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
              '8. Mejores Prácticas',
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
                    '✅ Buenas Prácticas:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• Usa nombres descriptivos y significativos\n'
                    '• Mantén funciones y métodos pequeños y enfocados\n'
                    '• Documenta código complejo o no obvio\n'
                    '• Usa null safety de manera explícita\n'
                    '• Maneja errores de forma apropiada\n'
                    '• Sigue las convenciones de nomenclatura\n'
                    '• Usa herramientas de formato automático\n'
                    '• Escribe tests para tu código',
                    style: TextStyle(
                      color: Colors.green.shade900,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '❌ Evita:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• Nombres de una sola letra o abreviaciones\n'
                    '• Funciones muy largas o complejas\n'
                    '• Comentarios obvios o desactualizados\n'
                    '• Ignorar errores o excepciones\n'
                    '• Mezclar estilos de nomenclatura\n'
                    '• Código sin formato consistente\n'
                    '• Variables globales innecesarias\n'
                    '• Código duplicado',
                    style: TextStyle(
                      color: Colors.red.shade900,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '9. Ejemplo Completo - Código Bien Estilizado',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un ejemplo completo de código siguiendo todas las convenciones:',
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
                '''/// Servicio para gestionar usuarios del sistema.
/// 
/// Proporciona funcionalidades para crear, actualizar y eliminar
/// usuarios, así como validar sus datos.
class ServicioUsuarios {
  // Constantes
  static const int edadMinima = 13;
  static const int edadMaxima = 120;
  static const int longitudMinimaNombre = 2;
  static const int longitudMaximaNombre = 50;
  
  // Variables de instancia
  final Map<String, Usuario> _usuarios = {};
  final List<String> _dominiosValidos = [
    'gmail.com',
    'yahoo.com',
    'hotmail.com',
  ];
  
  /// Crea un nuevo usuario con los datos proporcionados.
  /// 
  /// [nombre] debe tener entre [longitudMinimaNombre] y [longitudMaximaNombre] caracteres.
  /// [email] debe ser un email válido con un dominio permitido.
  /// [edad] debe estar entre [edadMinima] y [edadMaxima].
  /// 
  /// Lanza [ArgumentError] si algún parámetro es inválido.
  /// 
  /// Ejemplo:
  /// ```dart
  /// final servicio = ServicioUsuarios();
  /// final usuario = servicio.crearUsuario(
  ///   nombre: 'Juan Pérez',
  ///   email: 'juan@email.com',
  ///   edad: 25,
  /// );
  /// ```
  Usuario crearUsuario({
    required String nombre,
    required String email,
    required int edad,
  }) {
    _validarNombre(nombre);
    _validarEmail(email);
    _validarEdad(edad);
    
    final usuario = Usuario(
      id: _generarId(),
      nombre: nombre.trim(),
      email: email.toLowerCase().trim(),
      edad: edad,
      fechaCreacion: DateTime.now(),
    );
    
    _usuarios[usuario.id] = usuario;
    return usuario;
  }
  
  /// Obtiene un usuario por su ID.
  /// 
  /// Retorna [null] si no se encuentra el usuario.
  Usuario? obtenerUsuario(String id) {
    return _usuarios[id];
  }
  
  /// Actualiza los datos de un usuario existente.
  /// 
  /// Lanza [ArgumentError] si el usuario no existe o los datos son inválidos.
  void actualizarUsuario({
    required String id,
    String? nombre,
    String? email,
    int? edad,
  }) {
    final usuario = _usuarios[id];
    if (usuario == null) {
      throw ArgumentError('Usuario con ID \$id no encontrado');
    }
    
    if (nombre != null) _validarNombre(nombre);
    if (email != null) _validarEmail(email);
    if (edad != null) _validarEdad(edad);
    
    final usuarioActualizado = usuario.copyWith(
      nombre: nombre?.trim() ?? usuario.nombre,
      email: email?.toLowerCase().trim() ?? usuario.email,
      edad: edad ?? usuario.edad,
    );
    
    _usuarios[id] = usuarioActualizado;
  }
  
  /// Elimina un usuario del sistema.
  /// 
  /// Retorna [true] si el usuario fue eliminado, [false] si no existía.
  bool eliminarUsuario(String id) {
    return _usuarios.remove(id) != null;
  }
  
  /// Obtiene todos los usuarios del sistema.
  List<Usuario> obtenerTodosLosUsuarios() {
    return _usuarios.values.toList();
  }
  
  /// Valida que el nombre cumpla con los requisitos.
  void _validarNombre(String nombre) {
    final nombreTrimmed = nombre.trim();
    
    if (nombreTrimmed.isEmpty) {
      throw ArgumentError('El nombre no puede estar vacío');
    }
    
    if (nombreTrimmed.length < longitudMinimaNombre) {
      throw ArgumentError(
        'El nombre debe tener al menos \$longitudMinimaNombre caracteres',
      );
    }
    
    if (nombreTrimmed.length > longitudMaximaNombre) {
      throw ArgumentError(
        'El nombre no puede tener más de \$longitudMaximaNombre caracteres',
      );
    }
  }
  
  /// Valida que el email sea válido y tenga un dominio permitido.
  void _validarEmail(String email) {
    final emailTrimmed = email.trim().toLowerCase();
    
    if (emailTrimmed.isEmpty) {
      throw ArgumentError('El email no puede estar vacío');
    }
    
    if (!emailTrimmed.contains('@')) {
      throw ArgumentError('El email debe contener @');
    }
    
    final partes = emailTrimmed.split('@');
    if (partes.length != 2) {
      throw ArgumentError('Formato de email inválido');
    }
    
    final dominio = partes[1];
    if (!_dominiosValidos.contains(dominio)) {
      throw ArgumentError(
        'Dominio no permitido. Dominios válidos: \${_dominiosValidos.join(", ")}',
      );
    }
  }
  
  /// Valida que la edad esté dentro del rango permitido.
  void _validarEdad(int edad) {
    if (edad < edadMinima) {
      throw ArgumentError('La edad debe ser al menos \$edadMinima');
    }
    
    if (edad > edadMaxima) {
      throw ArgumentError('La edad no puede ser mayor a \$edadMaxima');
    }
  }
  
  /// Genera un ID único para un nuevo usuario.
  String _generarId() {
    return 'user_\${DateTime.now().millisecondsSinceEpoch}';
  }
}

/// Modelo de datos para representar un usuario.
class Usuario {
  final String id;
  final String nombre;
  final String email;
  final int edad;
  final DateTime fechaCreacion;
  
  const Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.edad,
    required this.fechaCreacion,
  });
  
  /// Crea una copia del usuario con los campos especificados actualizados.
  Usuario copyWith({
    String? id,
    String? nombre,
    String? email,
    int? edad,
    DateTime? fechaCreacion,
  }) {
    return Usuario(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      email: email ?? this.email,
      edad: edad ?? this.edad,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
    );
  }
  
  @override
  String toString() {
    return 'Usuario(id: \$id, nombre: \$nombre, email: \$email, edad: \$edad)';
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    
    return other is Usuario &&
        other.id == id &&
        other.nombre == nombre &&
        other.email == email &&
        other.edad == edad;
  }
  
  @override
  int get hashCode {
    return Object.hash(id, nombre, email, edad);
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
              '10. Resumen',
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
                    '📋 Puntos Clave:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '1️⃣ Usa nomenclatura consistente (camelCase, PascalCase)\n\n'
                    '2️⃣ Mantén formato y espaciado uniforme\n\n'
                    '3️⃣ Documenta código complejo con comentarios claros\n\n'
                    '4️⃣ Organiza clases siguiendo un orden lógico\n\n'
                    '5️⃣ Maneja errores de forma explícita y apropiada\n\n'
                    '6️⃣ Usa null safety de manera consciente\n\n'
                    '7️⃣ Aprovecha herramientas de formato automático\n\n'
                    '8️⃣ El estilo de código es fundamental para la calidad',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                      height: 1.8,
                    ),
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
