import 'package:flutter/material.dart';

class ErrorHandlePage extends StatelessWidget {
  const ErrorHandlePage({super.key});

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
              'Manejo de Errores en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'El manejo de errores es fundamental para crear aplicaciones robustas y confiables. Dart proporciona diversas herramientas y estrategias para manejar errores de manera efectiva, permitiendo controlar situaciones inesperadas sin que la aplicación se cierre abruptamente.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),

            // ¿Qué es el Manejo de Errores?
            Text(
              '¿Qué es el Manejo de Errores?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'El manejo de errores es el proceso de anticipar, detectar y responder a errores que pueden ocurrir durante la ejecución del programa. En Dart, esto incluye el uso de try-catch, throw, finally, y otras técnicas para controlar el flujo cuando ocurren problemas.',
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
                      Icon(Icons.info, color: Colors.blue.shade700),
                      const SizedBox(width: 8),
                      Text(
                        'Nota Importante',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'En Dart, hay una diferencia entre Error y Exception. Los Error representan problemas de programación que no deberían ser capturados (como null pointer), mientras que las Exception son problemas que se pueden anticipar y manejar.',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Utilidad del Manejo de Errores
            Text(
              'Utilidad del Manejo de Errores',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),

            _buildUtilityCard(
              context,
              Icons.security,
              'Prevención de Crashes',
              'Evita que la aplicación se cierre inesperadamente cuando ocurren errores.',
            ),
            const SizedBox(height: 12),
            _buildUtilityCard(
              context,
              Icons.person,
              'Mejor Experiencia de Usuario',
              'Permite mostrar mensajes amigables al usuario en lugar de errores técnicos.',
            ),
            const SizedBox(height: 12),
            _buildUtilityCard(
              context,
              Icons.bug_report,
              'Depuración',
              'Facilita la identificación y corrección de problemas en el código.',
            ),
            const SizedBox(height: 12),
            _buildUtilityCard(
              context,
              Icons.data_object,
              'Control de Flujo',
              'Permite tomar decisiones alternativas cuando ocurren problemas.',
            ),
            const SizedBox(height: 12),
            _buildUtilityCard(
              context,
              Icons.analytics,
              'Registro y Monitoreo',
              'Facilita el registro de errores para análisis posterior y mejora continua.',
            ),

            const SizedBox(height: 32),

            // Try-Catch Básico
            Text(
              '1. Try-Catch Básico',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'El bloque try-catch es la forma más común de manejar errores. El código que puede generar una excepción se coloca dentro del bloque try, y el manejo del error se realiza en el bloque catch.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Ejemplo Básico de Try-Catch',
              '''void ejemploBasico() {
  try {
    // Código que puede generar un error
    int resultado = 100 ~/ 0; // División por cero
    print('Resultado: \$resultado');
  } catch (e) {
    // Manejo del error
    print('Error capturado: \$e');
  }
  print('El programa continúa ejecutándose');
}

// Salida:
// Error capturado: IntegerDivisionByZeroException
// El programa continúa ejecutándose''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Parseo de Números',
              '''void parseoSeguro(String valor) {
  try {
    int numero = int.parse(valor);
    print('Número parseado: \$numero');
  } catch (e) {
    print('No se pudo convertir "\$valor" a número');
    print('Error: \$e');
  }
}

void main() {
  parseoSeguro('123');    // Funciona
  parseoSeguro('abc');    // Error capturado
}

// Salida:
// Número parseado: 123
// No se pudo convertir "abc" a número
// Error: FormatException: Invalid radix-10 number...''',
            ),

            const SizedBox(height: 32),

            // Catch con Tipos Específicos
            Text(
              '2. Captura de Excepciones Específicas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes capturar tipos específicos de excepciones para manejar diferentes errores de manera diferente.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Múltiples Catch',
              '''void procesamientoArchivo(String ruta) {
  try {
    // Operaciones con archivos
    var contenido = leerArchivo(ruta);
    var datos = int.parse(contenido);
    print('Datos: \$datos');
  } on FileSystemException catch (e) {
    print('Error de archivo: \${e.message}');
  } on FormatException catch (e) {
    print('Error de formato: \${e.message}');
  } catch (e) {
    print('Error desconocido: \$e');
  }
}

// Orden de captura:
// 1. Primero las excepciones más específicas
// 2. Luego las más generales
// 3. Finalmente un catch genérico para todo lo demás''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'On Catch con Stack Trace',
              '''void ejemploStackTrace() {
  try {
    throw Exception('Algo salió mal');
  } on Exception catch (e, stackTrace) {
    print('Excepción: \$e');
    print('Stack Trace:');
    print(stackTrace);
  }
}

// El stackTrace muestra la secuencia de llamadas
// que llevaron al error, útil para depuración''',
            ),

            const SizedBox(height: 32),

            // Finally
            Text(
              '3. Finally - Limpieza de Recursos',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'El bloque finally se ejecuta siempre, haya o no un error. Es ideal para liberar recursos, cerrar archivos o conexiones.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Uso de Finally',
              '''void manejarRecurso() {
  var recurso;
  try {
    recurso = abrirRecurso();
    procesarRecurso(recurso);
  } catch (e) {
    print('Error al procesar: \$e');
  } finally {
    // Este código SIEMPRE se ejecuta
    if (recurso != null) {
      cerrarRecurso(recurso);
      print('Recurso cerrado correctamente');
    }
  }
}

// Finally es útil para:
// - Cerrar archivos
// - Liberar conexiones de red
// - Limpiar memoria
// - Restaurar estados''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Finally con Try-Catch Completo',
              '''class ConexionDB {
  bool estaAbierta = false;
  
  void abrir() {
    estaAbierta = true;
    print('Conexión abierta');
  }
  
  void cerrar() {
    estaAbierta = false;
    print('Conexión cerrada');
  }
}

void consultarBaseDatos() {
  ConexionDB db = ConexionDB();
  
  try {
    db.abrir();
    // Operación que puede fallar
    var resultado = ejecutarConsulta(db);
    print('Resultado: \$resultado');
  } catch (e) {
    print('Error en consulta: \$e');
  } finally {
    // Garantiza que la conexión se cierre
    db.cerrar();
  }
}''',
            ),

            const SizedBox(height: 32),

            // Throw
            Text(
              '4. Lanzar Excepciones con Throw',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Puedes lanzar tus propias excepciones usando throw. Esto es útil para validaciones y para propagar errores.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Throw Simple',
              '''void validarEdad(int edad) {
  if (edad < 0) {
    throw ArgumentError('La edad no puede ser negativa');
  }
  if (edad < 18) {
    throw Exception('Debe ser mayor de edad');
  }
  print('Edad válida: \$edad');
}

void main() {
  try {
    validarEdad(-5);
  } catch (e) {
    print('Error: \$e');
  }
}

// Salida:
// Error: Invalid argument(s): La edad no puede ser negativa''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Re-throw (Volver a Lanzar)',
              '''void operacionCompleja() {
  try {
    realizarOperacion();
  } catch (e) {
    print('Registrando error: \$e');
    // Después de registrar, volver a lanzar
    rethrow;
  }
}

void main() {
  try {
    operacionCompleja();
  } catch (e) {
    print('Error capturado en main: \$e');
  }
}

// rethrow preserva el stack trace original
// throw e crearía un nuevo stack trace''',
            ),

            const SizedBox(height: 32),

            // Excepciones Personalizadas
            Text(
              '5. Excepciones Personalizadas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Crear tus propias clases de excepción permite manejar errores específicos de tu aplicación de manera más clara y estructurada.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Excepción Personalizada Simple',
              '''class SaldoInsuficienteException implements Exception {
  final String mensaje;
  final double saldoActual;
  final double montoRequerido;
  
  SaldoInsuficienteException({
    required this.mensaje,
    required this.saldoActual,
    required this.montoRequerido,
  });
  
  @override
  String toString() {
    return 'SaldoInsuficienteException: \$mensaje\\n'
           'Saldo actual: \$saldoActual\\n'
           'Monto requerido: \$montoRequerido';
  }
}

class CuentaBancaria {
  double saldo;
  
  CuentaBancaria(this.saldo);
  
  void retirar(double monto) {
    if (monto > saldo) {
      throw SaldoInsuficienteException(
        mensaje: 'No hay suficiente saldo para realizar el retiro',
        saldoActual: saldo,
        montoRequerido: monto,
      );
    }
    saldo -= monto;
    print('Retiro exitoso. Nuevo saldo: \$saldo');
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria(100.0);
  
  try {
    cuenta.retirar(150.0);
  } on SaldoInsuficienteException catch (e) {
    print(e);
    print('\\nIntente con un monto menor.');
  }
}''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Sistema de Excepciones Completo',
              '''// Excepción base para errores de usuario
class UsuarioException implements Exception {
  final String mensaje;
  final DateTime timestamp;
  
  UsuarioException(this.mensaje) : timestamp = DateTime.now();
  
  @override
  String toString() => 'UsuarioException: \$mensaje [\$timestamp]';
}

// Excepciones específicas
class UsuarioNoEncontradoException extends UsuarioException {
  final String idUsuario;
  
  UsuarioNoEncontradoException(this.idUsuario)
      : super('Usuario no encontrado: \$idUsuario');
}

class CredencialesInvalidasException extends UsuarioException {
  final int intentos;
  
  CredencialesInvalidasException(this.intentos)
      : super('Credenciales inválidas. Intentos: \$intentos');
}

class CuentaBloqueadaException extends UsuarioException {
  final String razon;
  
  CuentaBloqueadaException(this.razon)
      : super('Cuenta bloqueada: \$razon');
}

// Servicio de autenticación
class ServicioAutenticacion {
  Map<String, String> usuarios = {
    'user1': 'pass123',
    'user2': 'pass456',
  };
  
  Map<String, int> intentosFallidos = {};
  
  bool autenticar(String usuario, String password) {
    // Verificar si existe el usuario
    if (!usuarios.containsKey(usuario)) {
      throw UsuarioNoEncontradoException(usuario);
    }
    
    // Verificar intentos fallidos
    int intentos = intentosFallidos[usuario] ?? 0;
    if (intentos >= 3) {
      throw CuentaBloqueadaException(
        'Demasiados intentos fallidos'
      );
    }
    
    // Verificar contraseña
    if (usuarios[usuario] != password) {
      intentosFallidos[usuario] = intentos + 1;
      throw CredencialesInvalidasException(
        intentosFallidos[usuario]!
      );
    }
    
    // Autenticación exitosa
    intentosFallidos[usuario] = 0;
    return true;
  }
}

void main() {
  ServicioAutenticacion servicio = ServicioAutenticacion();
  
  void intentarLogin(String usuario, String password) {
    try {
      if (servicio.autenticar(usuario, password)) {
        print('✓ Login exitoso para \$usuario');
      }
    } on CuentaBloqueadaException catch (e) {
      print('✗ \$e');
      print('  Contacte al administrador');
    } on CredencialesInvalidasException catch (e) {
      print('✗ Contraseña incorrecta');
      print('  Intentos: \${e.intentos}/3');
    } on UsuarioNoEncontradoException catch (e) {
      print('✗ \$e');
      print('  Verifique el nombre de usuario');
    }
    print('---');
  }
  
  // Pruebas
  intentarLogin('user3', 'any');          // Usuario no existe
  intentarLogin('user1', 'wrong1');       // Intento 1
  intentarLogin('user1', 'wrong2');       // Intento 2
  intentarLogin('user1', 'wrong3');       // Intento 3
  intentarLogin('user1', 'pass123');      // Bloqueado
  intentarLogin('user2', 'pass456');      // Exitoso
}''',
            ),

            const SizedBox(height: 32),

            // Manejo de Errores Asíncronos
            Text(
              '6. Manejo de Errores Asíncronos',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Los errores en código asíncrono requieren atención especial. Dart proporciona herramientas para manejar errores en Futures y Streams.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Try-Catch con Async/Await',
              '''Future<String> obtenerDatosDelServidor(String url) async {
  try {
    // Simular llamada de red
    await Future.delayed(Duration(seconds: 2));
    
    if (url.isEmpty) {
      throw ArgumentError('URL no puede estar vacía');
    }
    
    // Simular error de red
    if (url.contains('error')) {
      throw Exception('Error de conexión al servidor');
    }
    
    return 'Datos obtenidos de \$url';
  } catch (e) {
    print('Error en obtenerDatosDelServidor: \$e');
    rethrow; // Propagar el error
  }
}

Future<void> procesarDatos() async {
  try {
    print('Iniciando petición...');
    String resultado = await obtenerDatosDelServidor('api.com');
    print('Resultado: \$resultado');
  } on ArgumentError catch (e) {
    print('Error de argumento: \$e');
  } on Exception catch (e) {
    print('Excepción: \$e');
  } finally {
    print('Proceso finalizado');
  }
}''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Manejo de Errores con Then/CatchError',
              '''Future<void> ejemploThenCatchError() {
  return obtenerDatos()
    .then((datos) {
      print('Datos recibidos: \$datos');
      return procesarDatos(datos);
    })
    .then((resultado) {
      print('Procesamiento completado: \$resultado');
    })
    .catchError((error) {
      print('Error capturado: \$error');
    })
    .whenComplete(() {
      print('Operación finalizada');
    });
}

// catchError es equivalente a catch en código síncrono
// whenComplete es equivalente a finally''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Manejo de Errores en Streams',
              '''void ejemploStream() {
  Stream<int> generadorNumeros() async* {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      if (i == 3) {
        throw Exception('Error en el número 3');
      }
      yield i;
    }
  }
  
  generadorNumeros().listen(
    (numero) {
      print('Número recibido: \$numero');
    },
    onError: (error) {
      print('Error en el stream: \$error');
    },
    onDone: () {
      print('Stream completado');
    },
    cancelOnError: false, // Continuar después del error
  );
}

// También puedes usar try-catch con await for
Future<void> streamConAwaitFor() async {
  try {
    await for (var dato in generadorStream()) {
      print('Dato: \$dato');
    }
  } catch (e) {
    print('Error: \$e');
  }
}''',
            ),

            const SizedBox(height: 32),

            // Patrones Avanzados
            Text(
              '7. Patrones Avanzados de Manejo de Errores',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Patrón Result/Either',
              '''// Patrón para manejar errores sin excepciones
class Result<T, E> {
  final T? _value;
  final E? _error;
  final bool isSuccess;
  
  Result.success(T value)
      : _value = value,
        _error = null,
        isSuccess = true;
  
  Result.failure(E error)
      : _value = null,
        _error = error,
        isSuccess = false;
  
  T get value {
    if (!isSuccess) {
      throw StateError('No hay valor en un resultado de error');
    }
    return _value!;
  }
  
  E get error {
    if (isSuccess) {
      throw StateError('No hay error en un resultado exitoso');
    }
    return _error!;
  }
  
  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(E error) onFailure,
  }) {
    return isSuccess ? onSuccess(_value as T) : onFailure(_error as E);
  }
}

// Uso del patrón
Result<int, String> dividir(int a, int b) {
  if (b == 0) {
    return Result.failure('No se puede dividir por cero');
  }
  return Result.success(a ~/ b);
}

void main() {
  var resultado1 = dividir(10, 2);
  resultado1.fold(
    onSuccess: (valor) => print('Resultado: \$valor'),
    onFailure: (error) => print('Error: \$error'),
  );
  
  var resultado2 = dividir(10, 0);
  resultado2.fold(
    onSuccess: (valor) => print('Resultado: \$valor'),
    onFailure: (error) => print('Error: \$error'),
  );
}''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Retry Pattern (Reintentos)',
              '''Future<T> retry<T>({
  required Future<T> Function() operacion,
  int maxIntentos = 3,
  Duration esperaEntreIntentos = const Duration(seconds: 1),
}) async {
  int intento = 0;
  
  while (true) {
    try {
      intento++;
      print('Intento \$intento de \$maxIntentos');
      return await operacion();
    } catch (e) {
      if (intento >= maxIntentos) {
        print('Máximo de intentos alcanzado');
        rethrow;
      }
      print('Error: \$e. Reintentando en \${esperaEntreIntentos.inSeconds}s...');
      await Future.delayed(esperaEntreIntentos);
    }
  }
}

// Uso
Future<void> ejemploRetry() async {
  try {
    var datos = await retry(
      operacion: () => fetchDataFromAPI(),
      maxIntentos: 3,
      esperaEntreIntentos: Duration(seconds: 2),
    );
    print('Datos obtenidos: \$datos');
  } catch (e) {
    print('Error final después de reintentos: \$e');
  }
}''',
            ),

            const SizedBox(height: 24),

            _buildCodeExample(
              context,
              'Circuit Breaker Pattern',
              '''enum CircuitState { closed, open, halfOpen }

class CircuitBreaker {
  CircuitState _state = CircuitState.closed;
  int _fallos = 0;
  final int umbralFallos;
  final Duration timeout;
  DateTime? _ultimoFallo;
  
  CircuitBreaker({
    this.umbralFallos = 5,
    this.timeout = const Duration(seconds: 60),
  });
  
  Future<T> ejecutar<T>(Future<T> Function() operacion) async {
    if (_state == CircuitState.open) {
      if (DateTime.now().difference(_ultimoFallo!) > timeout) {
        print('Circuit Breaker: Intentando recuperación (half-open)');
        _state = CircuitState.halfOpen;
      } else {
        throw Exception('Circuit Breaker OPEN: Servicio no disponible');
      }
    }
    
    try {
      T resultado = await operacion();
      _registrarExito();
      return resultado;
    } catch (e) {
      _registrarFallo();
      rethrow;
    }
  }
  
  void _registrarExito() {
    _fallos = 0;
    _state = CircuitState.closed;
    print('Circuit Breaker: CLOSED (funcionando normal)');
  }
  
  void _registrarFallo() {
    _fallos++;
    _ultimoFallo = DateTime.now();
    
    if (_fallos >= umbralFallos) {
      _state = CircuitState.open;
      print('Circuit Breaker: OPEN (demasiados fallos)');
    }
  }
  
  CircuitState get state => _state;
}

// Uso
class ServicioExternoAPI {
  final CircuitBreaker _circuitBreaker = CircuitBreaker(
    umbralFallos: 3,
    timeout: Duration(seconds: 10),
  );
  
  Future<String> obtenerDatos() async {
    return await _circuitBreaker.ejecutar(() async {
      // Simular llamada API
      await Future.delayed(Duration(milliseconds: 500));
      // Simular fallo aleatorio
      if (DateTime.now().millisecond % 2 == 0) {
        throw Exception('Error de conexión');
      }
      return 'Datos del servidor';
    });
  }
}''',
            ),

            const SizedBox(height: 32),

            // Mejores Prácticas
            Text(
              '8. Mejores Prácticas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),

            _buildBestPracticeCard(
              context,
              Icons.check_circle,
              'Usa excepciones para situaciones excepcionales',
              'No uses excepciones para control de flujo normal. Las excepciones deben ser para errores y situaciones inesperadas.',
              Colors.green,
            ),
            const SizedBox(height: 12),

            _buildBestPracticeCard(
              context,
              Icons.check_circle,
              'Captura excepciones específicas',
              'Captura solo las excepciones que puedes manejar. Evita catch (e) genéricos a menos que sea necesario.',
              Colors.green,
            ),
            const SizedBox(height: 12),

            _buildBestPracticeCard(
              context,
              Icons.check_circle,
              'Proporciona mensajes claros',
              'Los mensajes de error deben ser descriptivos y ayudar a entender qué salió mal y cómo solucionarlo.',
              Colors.green,
            ),
            const SizedBox(height: 12),

            _buildBestPracticeCard(
              context,
              Icons.check_circle,
              'Libera recursos con finally',
              'Usa finally para garantizar que los recursos se liberen, incluso si hay errores.',
              Colors.green,
            ),
            const SizedBox(height: 12),

            _buildBestPracticeCard(
              context,
              Icons.check_circle,
              'Registra errores importantes',
              'Mantén un registro de errores para análisis y depuración, especialmente en producción.',
              Colors.green,
            ),
            const SizedBox(height: 12),

            _buildBestPracticeCard(
              context,
              Icons.warning,
              'No silencies errores',
              'Evita catch vacíos. Siempre registra o maneja el error de alguna manera.',
              Colors.orange,
            ),
            const SizedBox(height: 12),

            _buildBestPracticeCard(
              context,
              Icons.warning,
              'No captes Error',
              'Los Error (como AssertionError) indican problemas de programación. Déjalos fallar para encontrar el bug.',
              Colors.orange,
            ),

            const SizedBox(height: 32),

            // Ejemplo Completo Real
            Text(
              '9. Ejemplo Completo: Sistema de Login',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),

            _buildCodeExample(
              context,
              'Sistema Completo de Autenticación',
              '''// ========== EXCEPCIONES PERSONALIZADAS ==========

class AuthException implements Exception {
  final String mensaje;
  final String codigo;
  
  AuthException(this.mensaje, this.codigo);
  
  @override
  String toString() => 'AuthException [\$codigo]: \$mensaje';
}

class NetworkException implements Exception {
  final String mensaje;
  final int? statusCode;
  
  NetworkException(this.mensaje, [this.statusCode]);
  
  @override
  String toString() {
    if (statusCode != null) {
      return 'NetworkException [\$statusCode]: \$mensaje';
    }
    return 'NetworkException: \$mensaje';
  }
}

// ========== MODELO DE USUARIO ==========

class Usuario {
  final String id;
  final String nombre;
  final String email;
  
  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
  });
  
  factory Usuario.fromJson(Map<String, dynamic> json) {
    try {
      return Usuario(
        id: json['id'] as String,
        nombre: json['nombre'] as String,
        email: json['email'] as String,
      );
    } catch (e) {
      throw FormatException('Error al parsear usuario: \$e');
    }
  }
}

// ========== SERVICIO DE AUTENTICACIÓN ==========

class AuthService {
  Future<Usuario> login(String email, String password) async {
    try {
      // Validar entrada
      _validarCredenciales(email, password);
      
      // Simular llamada de red
      final response = await _realizarPeticionLogin(email, password);
      
      // Procesar respuesta
      final usuario = _procesarRespuesta(response);
      
      return usuario;
    } on AuthException {
      // Propagar excepciones de autenticación
      rethrow;
    } on NetworkException {
      // Propagar excepciones de red
      rethrow;
    } catch (e, stackTrace) {
      // Registrar error inesperado
      print('Error inesperado en login:');
      print(e);
      print(stackTrace);
      throw AuthException(
        'Error interno del servidor',
        'INTERNAL_ERROR',
      );
    }
  }
  
  void _validarCredenciales(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      throw AuthException(
        'Email y contraseña son requeridos',
        'INVALID_CREDENTIALS',
      );
    }
    
    if (!email.contains('@')) {
      throw AuthException(
        'Email inválido',
        'INVALID_EMAIL',
      );
    }
    
    if (password.length < 6) {
      throw AuthException(
        'La contraseña debe tener al menos 6 caracteres',
        'PASSWORD_TOO_SHORT',
      );
    }
  }
  
  Future<Map<String, dynamic>> _realizarPeticionLogin(
    String email,
    String password,
  ) async {
    try {
      // Simular delay de red
      await Future.delayed(Duration(seconds: 1));
      
      // Simular respuesta del servidor
      if (email == 'test@test.com' && password == 'password123') {
        return {
          'success': true,
          'user': {
            'id': '123',
            'nombre': 'Usuario Test',
            'email': email,
          },
        };
      } else {
        throw NetworkException('Credenciales incorrectas', 401);
      }
    } catch (e) {
      if (e is NetworkException) rethrow;
      throw NetworkException('Error de conexión', null);
    }
  }
  
  Usuario _procesarRespuesta(Map<String, dynamic> response) {
    if (response['success'] != true) {
      throw AuthException(
        response['mensaje'] ?? 'Error desconocido',
        'LOGIN_FAILED',
      );
    }
    
    try {
      return Usuario.fromJson(response['user']);
    } catch (e) {
      throw AuthException(
        'Error al procesar datos del usuario',
        'PARSE_ERROR',
      );
    }
  }
}

// ========== CONTROLADOR DE UI ==========

class LoginController {
  final AuthService _authService = AuthService();
  
  Future<void> intentarLogin(String email, String password) async {
    try {
      print('🔐 Iniciando login...');
      
      Usuario usuario = await _authService.login(email, password);
      
      print('✅ Login exitoso!');
      print('   Bienvenido, \${usuario.nombre}');
      print('   Email: \${usuario.email}');
      
    } on AuthException catch (e) {
      print('❌ Error de autenticación:');
      print('   \${e.mensaje}');
      _mostrarMensajeUsuario(e.codigo, e.mensaje);
      
    } on NetworkException catch (e) {
      print('🌐 Error de red:');
      print('   \${e.mensaje}');
      if (e.statusCode != null) {
        print('   Código HTTP: \${e.statusCode}');
      }
      _mostrarMensajeUsuario('NETWORK_ERROR', 
        'Verifica tu conexión a internet');
      
    } catch (e) {
      print('⚠️ Error inesperado:');
      print('   \$e');
      _mostrarMensajeUsuario('UNKNOWN_ERROR',
        'Ocurrió un error inesperado. Intenta más tarde.');
      
    } finally {
      print('📝 Proceso de login finalizado\\n');
    }
  }
  
  void _mostrarMensajeUsuario(String codigo, String mensaje) {
    // En una app real, esto mostraría un diálogo o snackbar
    print('   📱 Mensaje al usuario: \$mensaje');
  }
}

// ========== MAIN - EJEMPLO DE USO ==========

void main() async {
  LoginController controller = LoginController();
  
  print('═══════════════════════════════════════════');
  print('Ejemplo 1: Login exitoso');
  print('═══════════════════════════════════════════');
  await controller.intentarLogin('test@test.com', 'password123');
  
  print('═══════════════════════════════════════════');
  print('Ejemplo 2: Credenciales incorrectas');
  print('═══════════════════════════════════════════');
  await controller.intentarLogin('test@test.com', 'wrong');
  
  print('═══════════════════════════════════════════');
  print('Ejemplo 3: Email inválido');
  print('═══════════════════════════════════════════');
  await controller.intentarLogin('invalid-email', 'password123');
  
  print('═══════════════════════════════════════════');
  print('Ejemplo 4: Campos vacíos');
  print('═══════════════════════════════════════════');
  await controller.intentarLogin('', '');
}''',
            ),

            const SizedBox(height: 32),

            // Resumen Final
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade50,
                    Colors.purple.shade50,
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.summarize, color: Colors.blue.shade700, size: 28),
                      const SizedBox(width: 12),
                      Text(
                        'Resumen del Manejo de Errores',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildSummaryPoint('Try-Catch: Para capturar y manejar errores'),
                  _buildSummaryPoint('On: Para capturar tipos específicos de excepciones'),
                  _buildSummaryPoint('Finally: Para código que siempre debe ejecutarse'),
                  _buildSummaryPoint('Throw/Rethrow: Para lanzar excepciones'),
                  _buildSummaryPoint('Excepciones personalizadas: Para errores específicos de tu dominio'),
                  _buildSummaryPoint('Async/Await: Manejo de errores en código asíncrono'),
                  _buildSummaryPoint('Patrones avanzados: Result, Retry, Circuit Breaker'),
                  const SizedBox(height: 16),
                  Text(
                    '💡 Un buen manejo de errores hace la diferencia entre una aplicación amateur y una profesional.',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.purple.shade700,
                      fontSize: 15,
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

  Widget _buildUtilityCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeExample(
    BuildContext context,
    String title,
    String code,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            border: Border.all(color: Colors.grey.shade700),
          ),
          child: SelectableText(
            code,
            style: const TextStyle(
              fontFamily: 'monospace',
              color: Colors.greenAccent,
              fontSize: 13,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBestPracticeCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.lerp(color, Colors.black, 0.6),
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    color: Color.lerp(color, Colors.black, 0.4),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green.shade600, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
