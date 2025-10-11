import 'package:flutter/material.dart';

class ConcurrenciaPage extends StatelessWidget {
  const ConcurrenciaPage({super.key});

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
              'Concurrencia en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'La concurrencia en Dart permite ejecutar múltiples operaciones al mismo tiempo, sin bloquear el hilo principal. Dart usa un modelo de concurrencia basado en async/await, Futures, Streams e Isolates.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            
            Text(
              '¿Qué es la Concurrencia?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'La concurrencia es:\n'
              '• La capacidad de ejecutar múltiples tareas simultáneamente\n'
              '• Fundamental para operaciones asíncronas (red, archivos, DB)\n'
              '• Mantiene la UI responsiva mientras se procesan datos\n'
              '• En Dart se maneja con async/await, Futures y Streams\n'
              '• Usa un Event Loop de un solo hilo por defecto',
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
                    'Dart es single-threaded pero asíncrono. Usa un Event Loop que permite que el código siga ejecutándose mientras espera operaciones largas.',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '1. Future - Operaciones Asíncronas Básicas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un Future representa un valor que estará disponible en el futuro:',
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
                '''// Future básico
Future<String> obtenerDatos() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Datos obtenidos',
  );
}

void main() {
  print('Inicio');
  
  obtenerDatos().then((datos) {
    print(datos);
  });
  
  print('Fin');
  
  // Salida:
  // Inicio
  // Fin
  // Datos obtenidos (después de 2 segundos)
}

// Future con manejo de errores
Future<int> dividir(int a, int b) {
  return Future.delayed(Duration(seconds: 1), () {
    if (b == 0) {
      throw Exception('No se puede dividir por cero');
    }
    return a ~/ b;
  });
}

void ejemploConError() {
  dividir(10, 2).then((resultado) {
    print('Resultado: \$resultado');
  }).catchError((error) {
    print('Error: \$error');
  });
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
              '2. Async/Await - Sintaxis Moderna',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Async/await hace que el código asíncrono parezca síncrono:',
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
                '''// Función async básica
Future<String> obtenerUsuario() async {
  // Simula una llamada a API
  await Future.delayed(Duration(seconds: 2));
  return 'Juan Pérez';
}

Future<int> obtenerEdad() async {
  await Future.delayed(Duration(seconds: 1));
  return 25;
}

// Usar async/await
Future<void> mostrarDatosUsuario() async {
  print('Obteniendo datos...');
  
  try {
    String nombre = await obtenerUsuario();
    int edad = await obtenerEdad();
    
    print('Usuario: \$nombre');
    print('Edad: \$edad años');
  } catch (e) {
    print('Error: \$e');
  }
  
  print('Datos obtenidos');
}

// Ejecutar múltiples operaciones en paralelo
Future<void> obtenerDatosEnParalelo() async {
  print('Inicio de consultas paralelas');
  
  // Ejecuta ambas operaciones al mismo tiempo
  var resultados = await Future.wait([
    obtenerUsuario(),
    obtenerEdad().then((edad) => edad.toString()),
  ]);
  
  print('Usuario: \${resultados[0]}');
  print('Edad: \${resultados[1]}');
}

void main() async {
  await mostrarDatosUsuario();
  await obtenerDatosEnParalelo();
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
              '3. Stream - Flujo de Datos Continuo',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Los Streams manejan múltiples valores a lo largo del tiempo:',
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
                '''import 'dart:async';

// Stream básico
Stream<int> contarHasta(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;  // Emite un valor
  }
}

// Escuchar un Stream
Future<void> ejemploStreamBasico() async {
  print('Iniciando conteo...');
  
  await for (int numero in contarHasta(5)) {
    print('Número: \$numero');
  }
  
  print('Conteo completado');
}

// Stream Controller - Control manual
class ContadorStream {
  final _controller = StreamController<int>();
  int _contador = 0;
  
  Stream<int> get stream => _controller.stream;
  
  void incrementar() {
    _contador++;
    _controller.add(_contador);
  }
  
  void decrementar() {
    _contador--;
    _controller.add(_contador);
  }
  
  void dispose() {
    _controller.close();
  }
}

void ejemploStreamController() {
  var contador = ContadorStream();
  
  // Escuchar cambios
  contador.stream.listen((valor) {
    print('Contador: \$valor');
  });
  
  contador.incrementar();  // Contador: 1
  contador.incrementar();  // Contador: 2
  contador.decrementar();  // Contador: 1
  
  contador.dispose();
}

// Stream con transformaciones
Future<void> ejemploStreamTransformado() async {
  var numeros = Stream.periodic(
    Duration(seconds: 1),
    (index) => index,
  ).take(5);
  
  // Transformar el stream
  var numerosDoblados = numeros.map((n) => n * 2);
  var numerosPares = numerosDoblados.where((n) => n % 2 == 0);
  
  await for (int numero in numerosPares) {
    print('Número par doblado: \$numero');
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
              '4. Ejemplo Básico Completo - Simulador de Descarga',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un ejemplo práctico de descarga de archivos:',
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
                '''// Simulador de descarga de archivo
class DescargadorArchivos {
  
  // Descarga simple
  Future<String> descargarArchivo(String url) async {
    print('📥 Iniciando descarga de: \$url');
    
    // Simular tiempo de descarga
    await Future.delayed(Duration(seconds: 3));
    
    print('✅ Descarga completada: \$url');
    return 'archivo_\${DateTime.now().millisecondsSinceEpoch}.dat';
  }
  
  // Descarga con progreso (Stream)
  Stream<double> descargarConProgreso(String url) async* {
    print('📥 Iniciando descarga con progreso: \$url');
    
    for (int i = 0; i <= 100; i += 10) {
      await Future.delayed(Duration(milliseconds: 300));
      yield i.toDouble();  // Emite el porcentaje de progreso
    }
    
    print('✅ Descarga completada con progreso');
  }
  
  // Descargar múltiples archivos en paralelo
  Future<List<String>> descargarMultiples(List<String> urls) async {
    print('📥 Descargando \${urls.length} archivos en paralelo...');
    
    var descargas = urls.map((url) => descargarArchivo(url));
    var resultados = await Future.wait(descargas);
    
    print('✅ Todas las descargas completadas');
    return resultados;
  }
}

// Uso del descargador
Future<void> ejemploDescarga() async {
  var descargador = DescargadorArchivos();
  
  // 1. Descarga simple
  print('--- Descarga Simple ---');
  var archivo = await descargador.descargarArchivo('https://ejemplo.com/archivo.zip');
  print('Archivo guardado: \$archivo');
  
  print('\\n--- Descarga con Progreso ---');
  // 2. Descarga con progreso
  await for (double progreso in descargador.descargarConProgreso('https://ejemplo.com/video.mp4')) {
    print('Progreso: \$progreso%');
  }
  
  print('\\n--- Descargas Paralelas ---');
  // 3. Múltiples descargas
  var urls = [
    'https://ejemplo.com/imagen1.jpg',
    'https://ejemplo.com/imagen2.jpg',
    'https://ejemplo.com/imagen3.jpg',
  ];
  
  var archivos = await descargador.descargarMultiples(urls);
  print('Archivos descargados: \${archivos.length}');
}

void main() async {
  await ejemploDescarga();
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
              '5. Ejemplo Avanzado - Sistema de Cache con Streams',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un sistema completo de cache con notificaciones en tiempo real:',
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
                '''import 'dart:async';

// Modelo de datos
class Usuario {
  final int id;
  final String nombre;
  final String email;
  
  Usuario(this.id, this.nombre, this.email);
  
  @override
  String toString() => 'Usuario(\$id, \$nombre, \$email)';
}

// Sistema de cache avanzado
class CacheManager<T> {
  final Map<String, T> _cache = {};
  final Map<String, DateTime> _tiemposExpiracion = {};
  final _controller = StreamController<CacheEvento<T>>.broadcast();
  
  // Stream para notificaciones de cambios
  Stream<CacheEvento<T>> get cambios => _controller.stream;
  
  // Obtener valor con expiración
  Future<T?> obtener(
    String clave,
    Future<T> Function() obtenerDatos, {
    Duration expiracion = const Duration(minutes: 5),
  }) async {
    // Verificar si existe en cache y no ha expirado
    if (_cache.containsKey(clave)) {
      var tiempoExp = _tiemposExpiracion[clave]!;
      if (DateTime.now().isBefore(tiempoExp)) {
        print('✅ Cache HIT: \$clave');
        _controller.add(CacheEvento('hit', clave, _cache[clave]));
        return _cache[clave];
      } else {
        print('⏰ Cache EXPIRADO: \$clave');
        _eliminar(clave);
      }
    }
    
    // No está en cache o expiró, obtener datos
    print('❌ Cache MISS: \$clave - Obteniendo datos...');
    try {
      T datos = await obtenerDatos();
      _guardar(clave, datos, expiracion);
      return datos;
    } catch (e) {
      print('Error al obtener datos: \$e');
      return null;
    }
  }
  
  void _guardar(String clave, T valor, Duration expiracion) {
    _cache[clave] = valor;
    _tiemposExpiracion[clave] = DateTime.now().add(expiracion);
    _controller.add(CacheEvento('guardar', clave, valor));
    print('💾 Guardado en cache: \$clave');
  }
  
  void _eliminar(String clave) {
    var valor = _cache.remove(clave);
    _tiemposExpiracion.remove(clave);
    _controller.add(CacheEvento('eliminar', clave, valor));
  }
  
  void limpiar() {
    _cache.clear();
    _tiemposExpiracion.clear();
    _controller.add(CacheEvento('limpiar', 'todos', null));
    print('🗑️  Cache limpiado');
  }
  
  int get tamaño => _cache.length;
  
  void dispose() {
    _controller.close();
  }
}

// Evento de cache
class CacheEvento<T> {
  final String tipo;
  final String clave;
  final T? valor;
  
  CacheEvento(this.tipo, this.clave, this.valor);
  
  @override
  String toString() => 'CacheEvento(\$tipo, \$clave)';
}

// Servicio de API simulado
class ApiService {
  Future<Usuario> obtenerUsuario(int id) async {
    print('🌐 Llamando a API para usuario \$id...');
    await Future.delayed(Duration(seconds: 2));
    return Usuario(id, 'Usuario \$id', 'usuario\$id@email.com');
  }
  
  Future<List<Usuario>> obtenerUsuarios() async {
    print('🌐 Llamando a API para lista de usuarios...');
    await Future.delayed(Duration(seconds: 3));
    return List.generate(
      5,
      (i) => Usuario(i + 1, 'Usuario \${i + 1}', 'usuario\${i + 1}@email.com'),
    );
  }
}

// Gestor de usuarios con cache
class GestorUsuarios {
  final ApiService _api = ApiService();
  final CacheManager<Usuario> _cacheUsuarios = CacheManager<Usuario>();
  final CacheManager<List<Usuario>> _cacheListas = CacheManager<List<Usuario>>();
  
  // Escuchar cambios en cache
  Stream<CacheEvento> get cambiosCache => 
      StreamGroup.merge([
        _cacheUsuarios.cambios,
        _cacheListas.cambios,
      ]);
  
  Future<Usuario?> obtenerUsuario(int id) async {
    return await _cacheUsuarios.obtener(
      'usuario_\$id',
      () => _api.obtenerUsuario(id),
      expiracion: Duration(minutes: 5),
    );
  }
  
  Future<List<Usuario>?> obtenerTodosLosUsuarios() async {
    return await _cacheListas.obtener(
      'usuarios_todos',
      () => _api.obtenerUsuarios(),
      expiracion: Duration(minutes: 3),
    );
  }
  
  void limpiarCache() {
    _cacheUsuarios.limpiar();
    _cacheListas.limpiar();
  }
  
  void dispose() {
    _cacheUsuarios.dispose();
    _cacheListas.dispose();
  }
}

// Uso del sistema completo
Future<void> ejemploSistemaCache() async {
  var gestor = GestorUsuarios();
  
  // Escuchar eventos de cache
  gestor.cambiosCache.listen((evento) {
    print('📢 Evento de cache: \$evento');
  });
  
  print('\\n=== Primera consulta (cache vacío) ===');
  var usuario1 = await gestor.obtenerUsuario(1);
  print('Resultado: \$usuario1\\n');
  
  print('=== Segunda consulta (desde cache) ===');
  var usuario1Cache = await gestor.obtenerUsuario(1);
  print('Resultado: \$usuario1Cache\\n');
  
  print('=== Consulta de lista ===');
  var usuarios = await gestor.obtenerTodosLosUsuarios();
  print('Usuarios obtenidos: \${usuarios?.length}\\n');
  
  print('=== Segunda consulta de lista (desde cache) ===');
  var usuariosCache = await gestor.obtenerTodosLosUsuarios();
  print('Usuarios obtenidos: \${usuariosCache?.length}\\n');
  
  // Múltiples usuarios en paralelo
  print('=== Consultas paralelas ===');
  var resultados = await Future.wait([
    gestor.obtenerUsuario(2),
    gestor.obtenerUsuario(3),
    gestor.obtenerUsuario(4),
  ]);
  print('Usuarios obtenidos: \${resultados.length}\\n');
  
  // Limpiar cache
  print('=== Limpiando cache ===');
  gestor.limpiarCache();
  
  gestor.dispose();
}

void main() async {
  await ejemploSistemaCache();
}

// Nota: Para usar StreamGroup, necesitas agregar la dependencia:
// dependencies:
//   async: ^2.11.0''',
                style: TextStyle(
                  fontFamily: 'monospace',
                  color: Colors.green.shade300,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 32),
            Text(
              '6. Isolates - Verdadero Paralelismo',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Los Isolates permiten ejecutar código en hilos separados:',
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
                '''import 'dart:isolate';

// Función que se ejecutará en el isolate
void calcularFibonacci(SendPort sendPort) {
  // Recibir datos del isolate principal
  ReceivePort receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);
  
  receivePort.listen((mensaje) {
    if (mensaje is int) {
      int resultado = fibonacci(mensaje);
      sendPort.send(resultado);
    }
  });
}

int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// Usar isolate
Future<int> calcularFibonacciEnIsolate(int n) async {
  // Crear puerto de recepción
  ReceivePort receivePort = ReceivePort();
  
  // Crear isolate
  await Isolate.spawn(calcularFibonacci, receivePort.sendPort);
  
  // Obtener puerto de envío del isolate
  SendPort sendPort = await receivePort.first;
  
  // Crear puerto para la respuesta
  ReceivePort responsePort = ReceivePort();
  sendPort.send(n);
  
  // Esperar resultado
  int resultado = await receivePort.first;
  return resultado;
}

// Ejemplo más simple con compute (Flutter)
Future<int> calcularConCompute(int n) async {
  // En Flutter puedes usar compute que simplifica los isolates
  // return await compute(fibonacci, n);
  
  // Para Dart puro, usar isolates manualmente
  return await calcularFibonacciEnIsolate(n);
}

void ejemploIsolate() async {
  print('Calculando Fibonacci(40) en isolate...');
  
  var resultado = await calcularFibonacciEnIsolate(40);
  print('Resultado: \$resultado');
  
  print('El programa principal no se bloqueó!');
}

// Procesamiento pesado en isolate
void procesarImagenIsolate(SendPort sendPort) {
  ReceivePort receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);
  
  receivePort.listen((datos) {
    if (datos is List<int>) {
      // Simular procesamiento de imagen
      var procesado = datos.map((pixel) => pixel * 2).toList();
      sendPort.send(procesado);
    }
  });
}

Future<List<int>> procesarImagen(List<int> pixeles) async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(procesarImagenIsolate, receivePort.sendPort);
  
  SendPort sendPort = await receivePort.first;
  sendPort.send(pixeles);
  
  List<int> resultado = await receivePort.first;
  return resultado;
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
              '7. Patrones Comunes de Concurrencia',
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
                '''// 1. Timeout - Límite de tiempo
Future<String> operacionConTimeout() async {
  try {
    var resultado = await Future.delayed(
      Duration(seconds: 5),
      () => 'Completado',
    ).timeout(Duration(seconds: 2));
    
    return resultado;
  } on TimeoutException {
    return 'Operación timeout';
  }
}

// 2. Retry - Reintentar operaciones
Future<T> reintentar<T>(
  Future<T> Function() operacion, {
  int intentos = 3,
  Duration espera = const Duration(seconds: 1),
}) async {
  for (int i = 0; i < intentos; i++) {
    try {
      return await operacion();
    } catch (e) {
      if (i == intentos - 1) rethrow;
      await Future.delayed(espera);
      print('Reintentando... (\${i + 1}/\$intentos)');
    }
  }
  throw Exception('No debería llegar aquí');
}

// Uso de retry
Future<void> ejemploRetry() async {
  var resultado = await reintentar(
    () => Future.delayed(
      Duration(seconds: 1),
      () => throw Exception('Error de red'),
    ),
    intentos: 3,
    espera: Duration(seconds: 2),
  );
}

// 3. Debounce - Evitar llamadas repetidas
class Debouncer {
  final Duration delay;
  Timer? _timer;
  
  Debouncer({required this.delay});
  
  void ejecutar(void Function() accion) {
    _timer?.cancel();
    _timer = Timer(delay, accion);
  }
  
  void dispose() {
    _timer?.cancel();
  }
}

// Uso de debounce
void ejemploDebounce() {
  var debouncer = Debouncer(delay: Duration(milliseconds: 500));
  
  // Simular eventos rápidos
  for (int i = 0; i < 10; i++) {
    debouncer.ejecutar(() {
      print('Búsqueda ejecutada: \$i');
    });
  }
  // Solo se ejecutará una vez después de 500ms
}

// 4. Throttle - Limitar frecuencia
class Throttler {
  final Duration intervalo;
  bool _puedeEjecutar = true;
  
  Throttler({required this.intervalo});
  
  void ejecutar(void Function() accion) {
    if (_puedeEjecutar) {
      accion();
      _puedeEjecutar = false;
      
      Timer(intervalo, () {
        _puedeEjecutar = true;
      });
    }
  }
}

// 5. Future.any - Primera respuesta
Future<String> primeraRespuesta() async {
  var servidores = [
    Future.delayed(Duration(seconds: 3), () => 'Servidor 1'),
    Future.delayed(Duration(seconds: 1), () => 'Servidor 2'),
    Future.delayed(Duration(seconds: 2), () => 'Servidor 3'),
  ];
  
  return await Future.any(servidores);
  // Retorna: "Servidor 2" (el más rápido)
}

// 6. Completer - Control manual de Future
Future<String> operacionConCompleter() {
  var completer = Completer<String>();
  
  // Simular operación asíncrona
  Timer(Duration(seconds: 2), () {
    if (DateTime.now().second % 2 == 0) {
      completer.complete('Éxito');
    } else {
      completer.completeError('Error');
    }
  });
  
  return completer.future;
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
                    '• Usa async/await en lugar de .then() cuando sea posible\n'
                    '• Siempre maneja errores con try-catch en funciones async\n'
                    '• Cierra StreamControllers cuando termines de usarlos\n'
                    '• Usa Future.wait() para operaciones paralelas\n'
                    '• Considera timeout para operaciones de red\n'
                    '• Usa Isolates para cálculos pesados\n'
                    '• Implementa retry para operaciones inestables\n'
                    '• Cancela Timers y suscripciones cuando no las necesites',
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
                    '• Bloquear el hilo principal con operaciones largas\n'
                    '• No manejar errores en código asíncrono\n'
                    '• Olvidar await en funciones async\n'
                    '• Crear múltiples Futures innecesarios\n'
                    '• No cerrar Streams y StreamControllers\n'
                    '• Usar sync* o async* sin necesidad\n'
                    '• Mezclar callbacks con async/await sin razón\n'
                    '• Ignorar memory leaks en subscripciones',
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
              '9. Comparación: Future vs Stream',
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
                    '🔄 Future vs Stream:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Future:\n'
                    '• Retorna UN solo valor\n'
                    '• Se completa una sola vez\n'
                    '• Ideal para peticiones HTTP\n'
                    '• Ejemplo: obtener datos de API\n\n'
                    'Stream:\n'
                    '• Retorna MÚLTIPLES valores\n'
                    '• Se puede completar múltiples veces\n'
                    '• Ideal para eventos continuos\n'
                    '• Ejemplo: ubicación GPS, WebSocket, eventos de UI',
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
                    '1️⃣ Dart es single-threaded pero asíncrono\n\n'
                    '2️⃣ Future representa un valor futuro único\n\n'
                    '3️⃣ async/await hace el código más legible\n\n'
                    '4️⃣ Stream maneja múltiples valores en el tiempo\n\n'
                    '5️⃣ Isolates permiten verdadero paralelismo\n\n'
                    '6️⃣ Usa Future.wait() para operaciones paralelas\n\n'
                    '7️⃣ Siempre maneja errores con try-catch\n\n'
                    '8️⃣ La concurrencia es esencial en aplicaciones modernas',
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

