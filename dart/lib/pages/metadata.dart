import 'package:flutter/material.dart';

class MetadataPage extends StatelessWidget {
  const MetadataPage({super.key});

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
              'Metadata (Anotaciones) en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Las metadata o anotaciones son información adicional que se agrega al código usando el símbolo @ (arroba). Proporcionan información extra sobre el código sin afectar su funcionamiento.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            
            Text(
              '¿Qué es Metadata?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Las metadata son:\n'
              '• Anotaciones que se colocan antes de una declaración\n'
              '• Información adicional sobre el código\n'
              '• No afectan la ejecución directa del código\n'
              '• Usadas por herramientas, compiladores o frameworks\n'
              '• Comienzan con el símbolo @ (arroba)',
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
                    'Las anotaciones son como etiquetas que le pones a tu código para que herramientas, compiladores o frameworks puedan obtener información adicional sobre él.',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '1. Metadata Predefinidas en Dart',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Dart incluye varias anotaciones predefinidas:',
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
                '''// @override - Indica que un método sobrescribe uno de la clase padre
class Animal {
  void hacerSonido() {
    print('Sonido genérico');
  }
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print('Guau guau');
  }
}

// @deprecated - Marca código que no debe usarse más
class Usuario {
  String nombre;
  
  @deprecated
  void metodoViejo() {
    print('Este método ya no se debe usar');
  }
  
  void metodoNuevo() {
    print('Usa este método en su lugar');
  }
}

// @required - Indica que un parámetro es obligatorio (antes de null safety)
class Boton {
  final String texto;
  
  Boton({@required this.texto});
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
              '2. @override - La Más Común',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '@override se usa para indicar que estás reemplazando un método de una clase padre:',
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
                '''class Vehiculo {
  void arrancar() {
    print('El vehículo está arrancando');
  }
  
  void detener() {
    print('El vehículo se está deteniendo');
  }
}

class Coche extends Vehiculo {
  @override
  void arrancar() {
    print('El coche arranca con llave');
  }
  
  @override
  void detener() {
    print('El coche frena suavemente');
  }
}

void main() {
  var miCoche = Coche();
  miCoche.arrancar();  // Salida: El coche arranca con llave
  miCoche.detener();   // Salida: El coche frena suavemente
}

// Beneficios de @override:
// 1. Detecta errores si el método no existe en la clase padre
// 2. Hace el código más claro y legible
// 3. Ayuda a mantener el código actualizado''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '3. @deprecated - Marcar Código Obsoleto',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '@deprecated marca código que ya no debe usarse:',
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
                '''class Calculadora {
  // Método obsoleto
  @deprecated
  int sumar(int a, int b) {
    return a + b;
  }
  
  // Nuevo método con mejor nombre
  int sumarNumeros(int a, int b) {
    return a + b;
  }
  
  // También puedes agregar un mensaje personalizado
  @Deprecated('Usa sumarConValidacion en su lugar')
  int sumarSinValidar(int a, int b) {
    return a + b;
  }
  
  int sumarConValidacion(int a, int b) {
    if (a < 0 || b < 0) {
      throw ArgumentError('Los números no pueden ser negativos');
    }
    return a + b;
  }
}

void main() {
  var calc = Calculadora();
  
  // Esto generará un warning (advertencia)
  var resultado1 = calc.sumar(5, 3);
  
  // Forma correcta
  var resultado2 = calc.sumarNumeros(5, 3);
  
  print('Resultado: \$resultado2');
}

// El IDE mostrará el método deprecated con una línea tachada''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '4. Metadata Personalizadas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes crear tus propias anotaciones personalizadas:',
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
                '''// Definir una anotación personalizada
class Todo {
  final String quien;
  final String que;
  
  const Todo(this.quien, this.que);
}

// Usar la anotación personalizada
@Todo('Juan', 'Implementar validación de correo')
void validarCorreo(String correo) {
  // Implementación pendiente
  print('Validando correo: \$correo');
}

@Todo('María', 'Optimizar esta función')
void procesarDatos(List datos) {
  // Código que necesita optimización
  for (var dato in datos) {
    print(dato);
  }
}

// Otra anotación personalizada para pruebas
class TestPriority {
  final int prioridad;
  const TestPriority(this.prioridad);
}

@TestPriority(1)
void pruebaImportante() {
  print('Esta prueba tiene alta prioridad');
}

@TestPriority(3)
void pruebaBaja() {
  print('Esta prueba tiene baja prioridad');
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
              '5. Metadata en Flutter',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Flutter usa muchas anotaciones para mejorar el desarrollo:',
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
                '''import 'package:flutter/material.dart';

// @immutable - Indica que la clase no debe cambiar
@immutable
class Usuario {
  final String nombre;
  final int edad;
  
  const Usuario(this.nombre, this.edad);
}

// @required - Para parámetros obligatorios (antes de null safety)
class MiWidget extends StatelessWidget {
  final String titulo;
  final String? subtitulo;
  
  const MiWidget({
    Key? key,
    required this.titulo,  // Parámetro obligatorio
    this.subtitulo,        // Parámetro opcional
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo),
        if (subtitulo != null) Text(subtitulo!),
      ],
    );
  }
}

// @protected - Indica que un miembro solo debe usarse dentro de la clase
// o sus subclases
class MiClaseBase {
  @protected
  void metodoProtegido() {
    print('Solo para uso interno');
  }
}

// @visibleForTesting - Indica que algo es público solo para pruebas
class MiServicio {
  @visibleForTesting
  void metodoInterno() {
    print('Este método solo debería usarse en pruebas');
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
              '6. @pragma - Anotaciones del Compilador',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '@pragma proporciona instrucciones especiales al compilador:',
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
                '''// @pragma para optimización del compilador
class MiClase {
  // Indica al compilador que no elimine este método
  @pragma('vm:entry-point')
  void metodoUsadoPorNativo() {
    print('Este método es llamado desde código nativo');
  }
  
  // Optimización para preferir inline
  @pragma('vm:prefer-inline')
  int sumarRapido(int a, int b) {
    return a + b;
  }
  
  // Evitar inline
  @pragma('vm:never-inline')
  void metodoComplejo() {
    // Código complejo que no debe hacerse inline
    for (var i = 0; i < 1000; i++) {
      print(i);
    }
  }
}

// Usado en Flutter para preservar métodos llamados desde platform channels
class MiPlugin {
  @pragma('vm:entry-point')
  static void metodoNativo() {
    print('Llamado desde código nativo');
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
              '7. Ejemplo Práctico Completo',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un ejemplo que combina varias anotaciones:',
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
                '''// Definir anotaciones personalizadas
class Autor {
  final String nombre;
  final String fecha;
  
  const Autor(this.nombre, this.fecha);
}

class Version {
  final String numero;
  final String cambios;
  
  const Version(this.numero, this.cambios);
}

// Usar las anotaciones
@Autor('Carlos Rodríguez', '2024-10-11')
@Version('2.0', 'Refactorización completa del sistema de autenticación')
class SistemaAutenticacion {
  
  @deprecated
  void loginAntiguo(String usuario, String password) {
    print('Método de login obsoleto');
  }
  
  void login(String usuario, String password) {
    if (_validarCredenciales(usuario, password)) {
      print('Login exitoso');
    } else {
      print('Credenciales inválidas');
    }
  }
  
  @visibleForTesting
  bool _validarCredenciales(String usuario, String password) {
    // Lógica de validación
    return usuario.isNotEmpty && password.length >= 6;
  }
  
  @Deprecated('Usa logout() en su lugar')
  void cerrarSesion() {
    print('Cerrando sesión (método viejo)');
  }
  
  void logout() {
    print('Sesión cerrada correctamente');
  }
}

// Clase base
abstract class Modelo {
  void guardar();
  void eliminar();
}

// Implementación con @override
@Autor('Ana García', '2024-10-11')
class UsuarioModelo extends Modelo {
  String nombre;
  String email;
  
  UsuarioModelo(this.nombre, this.email);
  
  @override
  void guardar() {
    print('Guardando usuario: \$nombre');
  }
  
  @override
  void eliminar() {
    print('Eliminando usuario: \$nombre');
  }
  
  @override
  String toString() {
    return 'Usuario(\$nombre, \$email)';
  }
}

void main() {
  // Usar las clases
  var auth = SistemaAutenticacion();
  
  // Esto generará warning
  auth.loginAntiguo('usuario', 'password123');
  
  // Forma correcta
  auth.login('usuario', 'password123');
  
  // Crear y usar modelo
  var usuario = UsuarioModelo('Juan', 'juan@email.com');
  usuario.guardar();
  
  print(usuario);
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
              '8. Casos de Uso Comunes',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
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
                '''// 1. Documentación mejorada
@Autor('Pedro López', '2024-01-15')
@Version('1.0', 'Versión inicial')
class MiClase {
  void miMetodo() {}
}

// 2. Marcas para herramientas de análisis
@Deprecated('Usa nuevaFuncion() desde v2.0')
void funcionVieja() {}

// 3. Optimización del compilador
@pragma('vm:prefer-inline')
int calcularRapido(int x) => x * 2;

// 4. Claridad en herencia
class Padre {
  void metodo() {}
}

class Hijo extends Padre {
  @override
  void metodo() {}  // Claramente sobreescrito
}

// 5. Configuración de frameworks
@immutable
class Configuracion {
  final String apiUrl;
  const Configuracion(this.apiUrl);
}

// 6. Testing
class MiServicio {
  @visibleForTesting
  int contadorInterno = 0;
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
              '9. Mejores Prácticas',
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
                    '• Usa @override siempre que sobrescribas métodos\n'
                    '• Usa @deprecated con mensajes claros\n'
                    '• Crea anotaciones personalizadas para documentación\n'
                    '• Usa @required (pre null-safety) o required (null-safety)\n'
                    '• Usa @visibleForTesting para métodos de prueba\n'
                    '• Usa @immutable para clases inmutables\n'
                    '• Documenta qué hace cada anotación personalizada',
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
                    '• Usar anotaciones sin entender su propósito\n'
                    '• Ignorar warnings de @deprecated\n'
                    '• Crear demasiadas anotaciones personalizadas\n'
                    '• Usar @override incorrectamente\n'
                    '• Dejar código @deprecated por mucho tiempo\n'
                    '• No documentar anotaciones personalizadas',
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
                    '1️⃣ Las metadata son anotaciones que comienzan con @\n\n'
                    '2️⃣ @override es la más común y debe usarse siempre\n\n'
                    '3️⃣ @deprecated marca código que ya no debe usarse\n\n'
                    '4️⃣ Puedes crear tus propias anotaciones personalizadas\n\n'
                    '5️⃣ Flutter usa muchas anotaciones (@immutable, @required, etc.)\n\n'
                    '6️⃣ Las anotaciones mejoran la legibilidad y mantenibilidad\n\n'
                    '7️⃣ El compilador y herramientas usan metadata para análisis\n\n'
                    '8️⃣ Las anotaciones no afectan la ejecución directa del código',
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

