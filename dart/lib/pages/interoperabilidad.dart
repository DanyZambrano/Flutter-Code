import 'package:flutter/material.dart';

class InteroperabilidadPage extends StatelessWidget {
  const InteroperabilidadPage({super.key});

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
              'Interoperabilidad en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'La interoperabilidad en Dart permite comunicarse y trabajar con código escrito en otros lenguajes, especialmente JavaScript, C/C++, y otros lenguajes nativos.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              '¿Qué es la Interoperabilidad?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'La interoperabilidad es:\n'
              '• La capacidad de comunicarse con código en otros lenguajes\n'
              '• Fundamental para reutilizar bibliotecas existentes\n'
              '• Permite acceso a APIs del sistema operativo\n'
              '• Facilita la migración gradual de código legacy\n'
              '• Soporta JavaScript, C/C++, Objective-C/Swift, Java/Kotlin',
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
                    'Dart puede llamar funciones de otros lenguajes y viceversa, manteniendo la seguridad de tipos y el rendimiento.',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '1. Casos de Uso Principales',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Principales escenarios donde se usa interoperabilidad:',
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
                '''// 1. Aplicaciones Web - JavaScript
@JS('console.log')
external void consoleLog(String message);

@JS('Math.random')
external double mathRandom();

// 2. Aplicaciones Móviles - APIs Nativas
static const MethodChannel _channel = MethodChannel('native_api');

static Future<String> obtenerInfoDispositivo() async {
  final String result = await _channel.invokeMethod('getDeviceInfo');
  return result;
}

// 3. Aplicaciones de Escritorio - C/C++
final DynamicLibrary nativeLib = DynamicLibrary.open('libnative.so');
final Pointer<Utf8> Function(Pointer<Utf8>) nativeFunction = 
    nativeLib.lookup<NativeFunction>('native_function').asFunction();

// 4. Servicios Backend - Bibliotecas Existentes
class MathLibrary {
  static DynamicLibrary lib = DynamicLibrary.open('math_lib.dll');
  
  static final Pointer<Double> Function(Pointer<Double>, Pointer<Double>) 
      _add = lib.lookup<NativeFunction>('add').asFunction();
}

// 5. Migración Gradual - Convertir código legacy
// Paso 1: Mantener código original
// Paso 2: Crear wrappers Dart
// Paso 3: Migrar gradualmente''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),

            Text(
              '2. Interoperabilidad con JavaScript',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Ejemplo básico de interoperabilidad con JavaScript:',
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
                '''// Declarar funciones JavaScript externas
@JS('console.log')
external void consoleLog(String message);

@JS('Math.random')
external double mathRandom();

@JS('JSON.stringify')
external String jsonStringify(dynamic obj);

// Usar las funciones JavaScript
void ejemploJavaScript() {
  consoleLog('Hola desde Dart!');
  
  double randomNumber = mathRandom();
  print('Número aleatorio: \$randomNumber');
  
  Map<String, dynamic> data = {'nombre': 'Juan', 'edad': 30};
  String json = jsonStringify(data);
  print('JSON: \$json');
}

// Crear objetos JavaScript
@JS()
@anonymous
class JsPerson {
  external String get name;
  external int get age;
  external factory JsPerson({String name, int age});
}

void crearObjetoJavaScript() {
  var person = JsPerson(name: 'María', age: 25);
  print('Persona JS: \${person.name}, \${person.age}');
}

// Llamar funciones JavaScript desde Dart
void main() {
  ejemploJavaScript();
  crearObjetoJavaScript();
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
              '3. Interoperabilidad con C/C++',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Ejemplo de interoperabilidad con C/C++ usando FFI:',
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
                '''import 'dart:ffi';
import 'dart:io';

// Definir tipos de datos C
typedef NativeFunction = Pointer<Utf8> Function(Pointer<Utf8>);
typedef DartFunction = Pointer<Utf8> Function(Pointer<Utf8>);

// Cargar biblioteca dinámica
final DynamicLibrary nativeLib = Platform.isWindows
    ? DynamicLibrary.open('native_lib.dll')
    : DynamicLibrary.open('libnative_lib.so');

// Declarar función C externa
final Pointer<Utf8> Function(Pointer<Utf8>) nativeFunction = nativeLib
    .lookup<NativeFunction>('native_function')
    .asFunction();

// Función wrapper en Dart
String llamarFuncionNativa(String input) {
  final inputPtr = input.toNativeUtf8();
  final resultPtr = nativeFunction(inputPtr);
  final result = resultPtr.toDartString();
  
  // Liberar memoria
  malloc.free(inputPtr);
  malloc.free(resultPtr);
  
  return result;
}

// Ejemplo de uso
void ejemploCNativo() {
  String resultado = llamarFuncionNativa('Hola desde Dart');
  print('Resultado C: \$resultado');
}

// Biblioteca matemática C
class MathLibrary {
  static DynamicLibrary lib = DynamicLibrary.open('math_lib.dll');
  
  static final Pointer<Double> Function(Pointer<Double>, Pointer<Double>) 
      _add = lib.lookup<NativeFunction>('add').asFunction();
  
  static double add(double a, double b) {
    final aPtr = malloc<Double>();
    final bPtr = malloc<Double>();
    aPtr.value = a;
    bPtr.value = b;
    
    final resultPtr = _add(aPtr, bPtr);
    final result = resultPtr.value;
    
    malloc.free(aPtr);
    malloc.free(bPtr);
    malloc.free(resultPtr);
    
    return result;
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
              '4. Interoperabilidad con APIs Nativas (Android/iOS)',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Ejemplo de interoperabilidad con APIs nativas móviles:',
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
                '''import 'package:flutter/services.dart';

class NativeApiService {
  static const MethodChannel _channel = MethodChannel('native_api');

  // Llamar función nativa Android
  static Future<String> obtenerInformacionDispositivo() async {
    try {
      final String result = await _channel.invokeMethod('getDeviceInfo');
      return result;
    } on PlatformException catch (e) {
      return 'Error: \${e.message}';
    }
  }

  // Llamar función nativa iOS
  static Future<bool> verificarConectividad() async {
    try {
      final bool result = await _channel.invokeMethod('checkConnectivity');
      return result;
    } on PlatformException catch (e) {
      print('Error: \${e.message}');
      return false;
    }
  }

  // Enviar datos a código nativo
  static Future<void> enviarDatos(Map<String, dynamic> data) async {
    try {
      await _channel.invokeMethod('sendData', data);
    } on PlatformException catch (e) {
      print('Error enviando datos: \${e.message}');
    }
  }
}

// Ejemplo de uso
void ejemploApiNativa() async {
  String deviceInfo = await NativeApiService.obtenerInformacionDispositivo();
  print('Info dispositivo: \$deviceInfo');
  
  bool conectado = await NativeApiService.verificarConectividad();
  print('Conectado: \$conectado');
  
  await NativeApiService.enviarDatos({
    'usuario': 'Juan',
    'accion': 'login'
  });
}

// Android - Kotlin/Java
/*
class MainActivity : FlutterActivity() {
    private val CHANNEL = "native_api"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getDeviceInfo" -> {
                    val deviceInfo = "Android \${Build.VERSION.RELEASE}"
                    result.success(deviceInfo)
                }
                "checkConnectivity" -> {
                    val isConnected = isNetworkAvailable()
                    result.success(isConnected)
                }
                else -> result.notImplemented()
            }
        }
    }
}
*/

// iOS - Swift/Objective-C
/*
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let controller = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel(name: "native_api", binaryMessenger: controller.binaryMessenger)
        
        channel.setMethodCallHandler { (call, result) in
            switch call.method {
            case "getDeviceInfo":
                let deviceInfo = "iOS \\(UIDevice.current.systemVersion)"
                result(deviceInfo)
            case "checkConnectivity":
                let isConnected = self.isNetworkAvailable()
                result(isConnected)
            default:
                result(FlutterMethodNotImplemented)
            }
        }
        
        return true
    }
}
*/''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),

            Text(
              '5. Interoperabilidad con Bibliotecas Existentes',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Ejemplo de uso de bibliotecas existentes con FFI:',
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
                '''import 'dart:ffi';
import 'dart:io';

// Biblioteca matemática C completa
class MathLibrary {
  static DynamicLibrary? _lib;
  
  static DynamicLibrary get lib {
    _lib ??= _loadLibrary();
    return _lib!;
  }
  
  static DynamicLibrary _loadLibrary() {
    if (Platform.isWindows) {
      return DynamicLibrary.open('math_lib.dll');
    } else if (Platform.isLinux) {
      return DynamicLibrary.open('libmath.so');
    } else if (Platform.isMacOS) {
      return DynamicLibrary.open('libmath.dylib');
    }
    throw UnsupportedError('Plataforma no soportada');
  }
  
  // Declarar funciones C
  static final Pointer<Double> Function(Pointer<Double>, Pointer<Double>) 
      _add = lib.lookup<NativeFunction>('add').asFunction();
  
  static final Pointer<Double> Function(Pointer<Double>, Pointer<Double>) 
      _multiply = lib.lookup<NativeFunction>('multiply').asFunction();
  
  // Wrappers Dart
  static double add(double a, double b) {
    final aPtr = malloc<Double>();
    final bPtr = malloc<Double>();
    aPtr.value = a;
    bPtr.value = b;
    
    final resultPtr = _add(aPtr, bPtr);
    final result = resultPtr.value;
    
    malloc.free(aPtr);
    malloc.free(bPtr);
    malloc.free(resultPtr);
    
    return result;
  }
  
  static double multiply(double a, double b) {
    final aPtr = malloc<Double>();
    final bPtr = malloc<Double>();
    aPtr.value = a;
    bPtr.value = b;
    
    final resultPtr = _multiply(aPtr, bPtr);
    final result = resultPtr.value;
    
    malloc.free(aPtr);
    malloc.free(bPtr);
    malloc.free(resultPtr);
    
    return result;
  }
}

// Ejemplo de uso
void ejemploBibliotecaExistente() {
  double suma = MathLibrary.add(5.0, 3.0);
  print('Suma: \$suma');
  
  double producto = MathLibrary.multiply(4.0, 7.0);
  print('Producto: \$producto');
}

// Biblioteca C equivalente (para referencia)
/*
// math_lib.c
#include <stdio.h>

double add(double a, double b) {
    return a + b;
}

double multiply(double a, double b) {
    return a * b;
}
*/''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '6. Mejores Prácticas',
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
                    '• Maneja excepciones al llamar código nativo\n'
                    '• Libera memoria asignada en llamadas FFI\n'
                    '• Valida datos antes de pasarlos a código nativo\n'
                    '• Documenta claramente las interfaces de interoperabilidad\n'
                    '• Prueba exhaustivamente las integraciones nativas\n'
                    '• Considera el overhead de las llamadas entre lenguajes\n'
                    '• Valida y sanitiza datos de entrada',
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
                    '• Ignorar errores de interoperabilidad\n'
                    '• No liberar memoria en llamadas FFI\n'
                    '• Pasar datos no validados a código nativo\n'
                    '• No documentar interfaces de interoperabilidad\n'
                    '• Asumir que el código nativo siempre funciona\n'
                    '• Ignorar diferencias de plataforma\n'
                    '• No manejar excepciones de plataforma',
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
              '7. Herramientas y Recursos',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
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
                  Text(
                    '🛠️ Herramientas Disponibles:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'FFI (Foreign Function Interface):\n'
                    '• Para interoperabilidad con C/C++\n'
                    '• dart:ffi - Biblioteca core\n\n'
                    'Platform Channels:\n'
                    '• Para comunicación con código nativo móvil\n'
                    '• MethodChannel, EventChannel\n\n'
                    'JavaScript Interop:\n'
                    '• js_interop - Para interoperabilidad con JavaScript\n'
                    '• dart:html - Para aplicaciones web\n\n'
                    'Otras Bibliotecas:\n'
                    '• dart:io - Para aplicaciones de escritorio y servidor\n'
                    '• dart:js - Biblioteca para JavaScript (deprecated)',
                    style: TextStyle(
                      color: Colors.amber.shade900,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '8. Resumen',
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
                    '1️⃣ Dart puede comunicarse con otros lenguajes\n\n'
                    '2️⃣ JavaScript interop para aplicaciones web\n\n'
                    '3️⃣ FFI para código C/C++ nativo\n\n'
                    '4️⃣ Platform Channels para móviles\n\n'
                    '5️⃣ Siempre maneja errores y memoria\n\n'
                    '6️⃣ Valida datos antes de interoperar\n\n'
                    '7️⃣ Documenta interfaces de interoperabilidad\n\n'
                    '8️⃣ La interoperabilidad es esencial para aplicaciones modernas',
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
