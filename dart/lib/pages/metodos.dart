import 'package:flutter/material.dart';

class MetodosPage extends StatelessWidget {
  const MetodosPage({super.key});

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
              'Métodos en Dart',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Los métodos son funciones que pertenecen a una clase. Son el comportamiento de los objetos y permiten que los datos encapsulados en una clase puedan ser manipulados de manera controlada.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            
            Text(
              '¿Qué es un Método?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un método es:\n'
              '• Una función que pertenece a una clase u objeto\n'
              '• El comportamiento de un objeto\n'
              '• Puede acceder a las propiedades de la clase\n'
              '• Define las acciones que puede realizar un objeto\n'
              '• Se invoca usando la notación de punto (objeto.metodo())',
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
                    'Un método es una función asociada a una clase. La principal diferencia es que los métodos tienen acceso al estado interno del objeto (sus propiedades) mediante "this".',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            Text(
              'Diferencia: Función vs Método',
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
                    '🔍 Función vs Método:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '📌 FUNCIÓN:\n'
                    '• Independiente, no pertenece a ninguna clase\n'
                    '• Se declara fuera de cualquier clase\n'
                    '• No tiene acceso a propiedades de instancia\n'
                    '• Se llama directamente por su nombre\n'
                    '• Ejemplo: int sumar(int a, int b) { return a + b; }\n\n'
                    '🎯 MÉTODO:\n'
                    '• Pertenece a una clase u objeto\n'
                    '• Se declara dentro de una clase\n'
                    '• Tiene acceso a propiedades de la clase (this)\n'
                    '• Se llama usando objeto.metodo()\n'
                    '• Ejemplo: class Calc { int sumar(int a, int b) {...} }',
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
              '1. Sintaxis Básica de Métodos',
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
                '''// Definición de una clase con métodos
class Persona {
  // Propiedades
  String nombre;
  int edad;
  
  // Constructor
  Persona(this.nombre, this.edad);
  
  // MÉTODO: presenta a la persona
  void presentarse() {
    print('Hola, soy \$nombre y tengo \$edad años');
  }
  
  // MÉTODO: con parámetros
  void cumplirAnios(int cantidad) {
    edad += cantidad;
    print('\$nombre ahora tiene \$edad años');
  }
  
  // MÉTODO: que retorna un valor
  bool esMayorDeEdad() {
    return edad >= 18;
  }
  
  // MÉTODO: con expresión de flecha
  String obtenerInfo() => 'Nombre: \$nombre, Edad: \$edad';
}

void main() {
  // Crear instancia
  var persona = Persona('Ana', 25);
  
  // Llamar métodos
  persona.presentarse();           // Hola, soy Ana y tengo 25 años
  persona.cumplirAnios(1);        // Ana ahora tiene 26 años
  
  if (persona.esMayorDeEdad()) {
    print('Es mayor de edad');
  }
  
  print(persona.obtenerInfo());   // Nombre: Ana, Edad: 26
}

// COMPARACIÓN CON FUNCIONES
// Función independiente (NO es un método)
void presentarPersona(String nombre, int edad) {
  print('Hola, soy \$nombre y tengo \$edad años');
}

// Uso de función
void ejemploFuncion() {
  presentarPersona('Carlos', 30);
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
              '2. Tipos de Métodos',
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
                '''class Calculadora {
  // Propiedad de instancia
  String modelo = 'Casio FX-570';
  
  // 1. MÉTODO DE INSTANCIA (más común)
  int sumar(int a, int b) {
    print('Usando calculadora: \$modelo');
    return a + b;
  }
  
  // 2. MÉTODO ESTÁTICO (sin acceso a propiedades de instancia)
  static int multiplicar(int a, int b) {
    // No puede usar 'this' ni 'modelo'
    return a * b;
  }
  
  // 3. GETTER (método que parece una propiedad)
  String get descripcion {
    return 'Calculadora modelo \$modelo';
  }
  
  // 4. SETTER (método para asignar valor)
  set nuevoModelo(String valor) {
    modelo = valor;
    print('Modelo actualizado a: \$modelo');
  }
  
  // 5. MÉTODO PRIVADO (comienza con _)
  int _operacionInterna(int x) {
    return x * 2;
  }
  
  // Método público que usa el privado
  int duplicar(int numero) {
    return _operacionInterna(numero);
  }
}

void main() {
  // Método de instancia
  var calc = Calculadora();
  print(calc.sumar(5, 3));              // 8
  
  // Método estático (se llama con el nombre de la clase)
  print(Calculadora.multiplicar(4, 5)); // 20
  
  // Getter (se usa como propiedad)
  print(calc.descripcion);              // Calculadora modelo Casio FX-570
  
  // Setter (se usa como asignación)
  calc.nuevoModelo = 'HP 12C';
  
  // Método público
  print(calc.duplicar(10));             // 20
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
              '3. Ejemplo Básico - Cuenta Bancaria',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un ejemplo práctico de una cuenta bancaria con métodos:',
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
                '''class CuentaBancaria {
  // Propiedades
  String titular;
  double saldo;
  String numeroCuenta;
  
  // Constructor
  CuentaBancaria(this.titular, this.numeroCuenta, [this.saldo = 0.0]);
  
  // MÉTODO: Depositar dinero
  void depositar(double cantidad) {
    if (cantidad <= 0) {
      print('❌ Error: La cantidad debe ser mayor a 0');
      return;
    }
    
    saldo += cantidad;
    print('✅ Depósito exitoso: \\\$\${cantidad.toStringAsFixed(2)}');
    print('💰 Saldo actual: \\\$\${saldo.toStringAsFixed(2)}');
  }
  
  // MÉTODO: Retirar dinero
  bool retirar(double cantidad) {
    if (cantidad <= 0) {
      print('❌ Error: La cantidad debe ser mayor a 0');
      return false;
    }
    
    if (cantidad > saldo) {
      print('❌ Error: Saldo insuficiente');
      print('💰 Saldo disponible: \\\$\${saldo.toStringAsFixed(2)}');
      return false;
    }
    
    saldo -= cantidad;
    print('✅ Retiro exitoso: \\\$\${cantidad.toStringAsFixed(2)}');
    print('💰 Saldo restante: \\\$\${saldo.toStringAsFixed(2)}');
    return true;
  }
  
  // MÉTODO: Transferir a otra cuenta
  bool transferir(CuentaBancaria destino, double cantidad) {
    print('\\n🔄 Iniciando transferencia...');
    print('De: \$titular → Para: \${destino.titular}');
    
    if (retirar(cantidad)) {
      destino.depositar(cantidad);
      print('✅ Transferencia completada');
      return true;
    }
    
    print('❌ Transferencia fallida');
    return false;
  }
  
  // MÉTODO: Consultar saldo
  void consultarSaldo() {
    print('\\n═══════════════════════════');
    print('Titular: \$titular');
    print('Cuenta: \$numeroCuenta');
    print('Saldo: \\\$\${saldo.toStringAsFixed(2)}');
    print('═══════════════════════════');
  }
  
  // GETTER: obtener saldo
  double get saldoActual => saldo;
  
  // MÉTODO: mostrar información
  String obtenerResumen() {
    return 'Cuenta de \$titular - Saldo: \\\$\${saldo.toStringAsFixed(2)}';
  }
}

void main() {
  print('🏦 Sistema Bancario\\n');
  
  // Crear cuentas
  var cuenta1 = CuentaBancaria('María García', '1001', 1000.0);
  var cuenta2 = CuentaBancaria('Juan Pérez', '1002', 500.0);
  
  // Consultar saldo inicial
  cuenta1.consultarSaldo();
  cuenta2.consultarSaldo();
  
  // Depositar
  print('\\n📥 DEPÓSITO');
  cuenta1.depositar(500.0);
  
  // Retirar
  print('\\n📤 RETIRO');
  cuenta2.retirar(200.0);
  
  // Transferir
  print('\\n💸 TRANSFERENCIA');
  cuenta1.transferir(cuenta2, 300.0);
  
  // Consultar saldos finales
  print('\\n📊 SALDOS FINALES');
  cuenta1.consultarSaldo();
  cuenta2.consultarSaldo();
  
  // Usando getter
  print('\\n💵 Saldo de María: \\\$\${cuenta1.saldoActual}');
  print('💵 Saldo de Juan: \\\$\${cuenta2.saldoActual}');
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
              '4. Métodos con Parámetros Especiales',
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
                '''class Producto {
  String nombre;
  double precio;
  int stock;
  
  Producto(this.nombre, this.precio, this.stock);
  
  // Método con parámetros posicionales opcionales
  void ajustarPrecio(double nuevoPrecio, [String? razon]) {
    precio = nuevoPrecio;
    print('Precio de \$nombre actualizado a \\\$\$precio');
    if (razon != null) {
      print('Razón: \$razon');
    }
  }
  
  // Método con parámetros nombrados
  void actualizarInfo({
    String? nuevoNombre,
    double? nuevoPrecio,
    int? nuevoStock,
  }) {
    if (nuevoNombre != null) nombre = nuevoNombre;
    if (nuevoPrecio != null) precio = nuevoPrecio;
    if (nuevoStock != null) stock = nuevoStock;
    
    print('Producto actualizado: \$nombre');
  }
  
  // Método con parámetros requeridos
  double calcularDescuento({
    required double porcentaje,
    required bool aplicarImpuesto,
  }) {
    double precioConDescuento = precio - (precio * porcentaje / 100);
    
    if (aplicarImpuesto) {
      precioConDescuento *= 1.16; // Agregar 16% de impuesto
    }
    
    return precioConDescuento;
  }
  
  // Método con valor por defecto
  void mostrarInfo([bool detallado = false]) {
    print('\\nProducto: \$nombre');
    print('Precio: \\\$\$precio');
    
    if (detallado) {
      print('Stock: \$stock unidades');
      print('Valor total en inventario: \\\$\${precio * stock}');
    }
  }
}

void main() {
  var laptop = Producto('Laptop HP', 15000.0, 10);
  
  // Parámetro opcional omitido
  laptop.ajustarPrecio(14000.0);
  
  // Parámetro opcional proporcionado
  laptop.ajustarPrecio(13500.0, 'Promoción de temporada');
  
  // Parámetros nombrados
  laptop.actualizarInfo(
    nuevoStock: 15,
    nuevoPrecio: 13000.0,
  );
  
  // Parámetros requeridos
  var precioDescuento = laptop.calcularDescuento(
    porcentaje: 10,
    aplicarImpuesto: true,
  );
  print('Precio con descuento: \\\$\$precioDescuento');
  
  // Valor por defecto
  laptop.mostrarInfo();           // Modo simple
  laptop.mostrarInfo(true);       // Modo detallado
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
              '5. Ejemplo Avanzado - Sistema de Tienda Online',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Un sistema completo de tienda online con múltiples clases y métodos:',
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
                '''// Modelo de producto
class ProductoTienda {
  final String id;
  String nombre;
  double precio;
  int stockDisponible;
  String categoria;
  double calificacion;
  
  ProductoTienda({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.stockDisponible,
    required this.categoria,
    this.calificacion = 0.0,
  });
  
  // MÉTODO: Verificar disponibilidad
  bool hayStock(int cantidad) => stockDisponible >= cantidad;
  
  // MÉTODO: Reducir stock
  bool reducirStock(int cantidad) {
    if (hayStock(cantidad)) {
      stockDisponible -= cantidad;
      return true;
    }
    return false;
  }
  
  // MÉTODO: Reponer stock
  void reponerStock(int cantidad) {
    stockDisponible += cantidad;
    print('📦 Stock de \$nombre repuesto: +\$cantidad unidades');
  }
  
  // MÉTODO: Aplicar descuento
  double obtenerPrecioConDescuento(double porcentaje) {
    return precio * (1 - porcentaje / 100);
  }
  
  // GETTER: Estado del stock
  String get estadoStock {
    if (stockDisponible == 0) return '❌ Agotado';
    if (stockDisponible < 5) return '⚠️ Stock bajo';
    return '✅ Disponible';
  }
  
  @override
  String toString() {
    return '\$nombre - \\\$\$precio (\$estadoStock - \$stockDisponible disponibles)';
  }
}

// Modelo de ítem en carrito
class ItemCarrito {
  final ProductoTienda producto;
  int cantidad;
  
  ItemCarrito(this.producto, this.cantidad);
  
  // MÉTODO: Calcular subtotal
  double calcularSubtotal() => producto.precio * cantidad;
  
  // MÉTODO: Aumentar cantidad
  void aumentarCantidad(int incremento) {
    cantidad += incremento;
  }
  
  // MÉTODO: Reducir cantidad
  bool reducirCantidad(int decremento) {
    if (cantidad > decremento) {
      cantidad -= decremento;
      return true;
    }
    return false;
  }
  
  @override
  String toString() {
    return '\${producto.nombre} x\$cantidad = \\\$\${calcularSubtotal().toStringAsFixed(2)}';
  }
}

// Clase principal: Carrito de Compras
class CarritoCompras {
  final String clienteId;
  final List<ItemCarrito> _items = [];
  String? codigoDescuento;
  
  CarritoCompras(this.clienteId);
  
  // MÉTODO: Agregar producto al carrito
  void agregarProducto(ProductoTienda producto, int cantidad) {
    // Verificar stock
    if (!producto.hayStock(cantidad)) {
      print('❌ Stock insuficiente de \${producto.nombre}');
      print('   Stock disponible: \${producto.stockDisponible}');
      return;
    }
    
    // Buscar si el producto ya está en el carrito
    var itemExistente = _buscarItem(producto.id);
    
    if (itemExistente != null) {
      itemExistente.aumentarCantidad(cantidad);
      print('✅ Cantidad actualizada de \${producto.nombre}');
    } else {
      _items.add(ItemCarrito(producto, cantidad));
      print('✅ \${producto.nombre} agregado al carrito');
    }
    
    _mostrarResumen();
  }
  
  // MÉTODO PRIVADO: Buscar ítem en carrito
  ItemCarrito? _buscarItem(String productoId) {
    try {
      return _items.firstWhere((item) => item.producto.id == productoId);
    } catch (e) {
      return null;
    }
  }
  
  // MÉTODO: Eliminar producto del carrito
  bool eliminarProducto(String productoId) {
    var item = _buscarItem(productoId);
    if (item != null) {
      _items.remove(item);
      print('🗑️  \${item.producto.nombre} eliminado del carrito');
      return true;
    }
    print('❌ Producto no encontrado en el carrito');
    return false;
  }
  
  // MÉTODO: Actualizar cantidad de producto
  void actualizarCantidad(String productoId, int nuevaCantidad) {
    var item = _buscarItem(productoId);
    
    if (item == null) {
      print('❌ Producto no encontrado');
      return;
    }
    
    if (nuevaCantidad <= 0) {
      eliminarProducto(productoId);
      return;
    }
    
    if (!item.producto.hayStock(nuevaCantidad)) {
      print('❌ Stock insuficiente');
      return;
    }
    
    item.cantidad = nuevaCantidad;
    print('✅ Cantidad actualizada');
    _mostrarResumen();
  }
  
  // MÉTODO: Calcular subtotal
  double calcularSubtotal() {
    return _items.fold(0.0, (total, item) => total + item.calcularSubtotal());
  }
  
  // MÉTODO: Aplicar código de descuento
  double aplicarDescuento(String codigo) {
    codigoDescuento = codigo;
    
    // Simulación de códigos de descuento
    Map<String, double> descuentos = {
      'VERANO2024': 15.0,
      'PRIMERACOMPRA': 20.0,
      'CLIENTE10': 10.0,
    };
    
    return descuentos[codigo] ?? 0.0;
  }
  
  // MÉTODO: Calcular impuestos
  double calcularImpuestos() {
    return calcularSubtotal() * 0.16; // 16% de IVA
  }
  
  // MÉTODO: Calcular total
  double calcularTotal() {
    double subtotal = calcularSubtotal();
    double descuento = 0.0;
    
    if (codigoDescuento != null) {
      double porcentaje = aplicarDescuento(codigoDescuento!);
      descuento = subtotal * (porcentaje / 100);
    }
    
    double impuestos = (subtotal - descuento) * 0.16;
    return subtotal - descuento + impuestos;
  }
  
  // MÉTODO: Vaciar carrito
  void vaciarCarrito() {
    _items.clear();
    codigoDescuento = null;
    print('🗑️  Carrito vaciado');
  }
  
  // MÉTODO: Procesar compra
  bool procesarCompra() {
    if (_items.isEmpty) {
      print('❌ El carrito está vacío');
      return false;
    }
    
    print('\\n💳 Procesando compra...');
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    
    // Verificar y reducir stock de cada producto
    for (var item in _items) {
      if (!item.producto.reducirStock(item.cantidad)) {
        print('❌ Error: Stock insuficiente de \${item.producto.nombre}');
        return false;
      }
    }
    
    mostrarResumenCompra();
    vaciarCarrito();
    
    print('✅ ¡Compra procesada exitosamente!');
    print('📧 Recibirás un correo de confirmación');
    
    return true;
  }
  
  // MÉTODO PRIVADO: Mostrar resumen simple
  void _mostrarResumen() {
    print('🛒 Items en carrito: \${_items.length}');
    print('💰 Subtotal: \\\$\${calcularSubtotal().toStringAsFixed(2)}');
  }
  
  // MÉTODO: Mostrar resumen completo de compra
  void mostrarResumenCompra() {
    print('\\n🛒 RESUMEN DE COMPRA');
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    print('Cliente ID: \$clienteId\\n');
    
    print('Productos:');
    for (var item in _items) {
      print('  • \$item');
    }
    
    double subtotal = calcularSubtotal();
    double descuento = 0.0;
    
    if (codigoDescuento != null) {
      double porcentaje = aplicarDescuento(codigoDescuento!);
      descuento = subtotal * (porcentaje / 100);
      print('\\nSubtotal: \\\$\${subtotal.toStringAsFixed(2)}');
      print('Descuento (\$codigoDescuento -\${porcentaje.toInt()}%): -\\\$\${descuento.toStringAsFixed(2)}');
    } else {
      print('\\nSubtotal: \\\$\${subtotal.toStringAsFixed(2)}');
    }
    
    double impuestos = calcularImpuestos();
    double total = calcularTotal();
    
    print('Impuestos (16%): \\\$\${impuestos.toStringAsFixed(2)}');
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    print('TOTAL: \\\$\${total.toStringAsFixed(2)}');
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  }
  
  // GETTER: Cantidad de items
  int get cantidadItems => _items.length;
  
  // GETTER: Está vacío
  bool get estaVacio => _items.isEmpty;
  
  // MÉTODO: Obtener productos del carrito
  List<ItemCarrito> obtenerItems() => List.unmodifiable(_items);
}

// Simulación de uso del sistema
void main() {
  print('🏪 SISTEMA DE TIENDA ONLINE\\n');
  
  // Crear productos
  var laptop = ProductoTienda(
    id: 'P001',
    nombre: 'Laptop Dell XPS 15',
    precio: 25000.0,
    stockDisponible: 5,
    categoria: 'Electrónica',
    calificacion: 4.5,
  );
  
  var mouse = ProductoTienda(
    id: 'P002',
    nombre: 'Mouse Logitech MX Master',
    precio: 1500.0,
    stockDisponible: 20,
    categoria: 'Accesorios',
    calificacion: 4.8,
  );
  
  var teclado = ProductoTienda(
    id: 'P003',
    nombre: 'Teclado Mecánico Keychron',
    precio: 2000.0,
    stockDisponible: 10,
    categoria: 'Accesorios',
    calificacion: 4.7,
  );
  
  // Mostrar productos disponibles
  print('📦 PRODUCTOS DISPONIBLES:');
  print(laptop);
  print(mouse);
  print(teclado);
  
  // Crear carrito
  print('\\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\\n');
  var carrito = CarritoCompras('CLIENTE001');
  
  // Agregar productos al carrito
  print('➕ AGREGANDO PRODUCTOS AL CARRITO:\\n');
  carrito.agregarProducto(laptop, 1);
  print('');
  carrito.agregarProducto(mouse, 2);
  print('');
  carrito.agregarProducto(teclado, 1);
  
  // Aplicar código de descuento
  print('\\n🎟️  APLICANDO CÓDIGO DE DESCUENTO:\\n');
  carrito.codigoDescuento = 'VERANO2024';
  print('Código "\${carrito.codigoDescuento}" aplicado');
  
  // Mostrar resumen antes de comprar
  print('');
  carrito.mostrarResumenCompra();
  
  // Procesar compra
  print('\\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\\n');
  carrito.procesarCompra();
  
  // Mostrar stock actualizado
  print('\\n📊 STOCK ACTUALIZADO:');
  print(laptop);
  print(mouse);
  print(teclado);
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
              '6. Métodos Especiales',
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
                '''class Empleado {
  String nombre;
  double salario;
  
  Empleado(this.nombre, this.salario);
  
  // MÉTODO toString() - Convierte objeto a String
  @override
  String toString() {
    return 'Empleado: \$nombre, Salario: \\\$\$salario';
  }
  
  // MÉTODO operator == - Comparar objetos
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Empleado && 
           other.nombre == nombre &&
           other.salario == salario;
  }
  
  // MÉTODO hashCode - Necesario al sobrescribir ==
  @override
  int get hashCode => nombre.hashCode ^ salario.hashCode;
  
  // OPERADOR PERSONALIZADO + (sumar salarios)
  Empleado operator +(Empleado otro) {
    return Empleado(
      '\$nombre + \${otro.nombre}',
      salario + otro.salario,
    );
  }
  
  // OPERADOR PERSONALIZADO > (comparar salarios)
  bool operator >(Empleado otro) {
    return salario > otro.salario;
  }
  
  // OPERADOR [] - Acceso tipo índice
  dynamic operator [](String campo) {
    switch (campo) {
      case 'nombre':
        return nombre;
      case 'salario':
        return salario;
      default:
        return null;
    }
  }
  
  // MÉTODO call() - Hace el objeto "callable"
  void call() {
    print('\$nombre gana \\\$\$salario al mes');
  }
}

void main() {
  var emp1 = Empleado('Ana', 50000);
  var emp2 = Empleado('Carlos', 60000);
  
  // toString
  print(emp1);  // Empleado: Ana, Salario: \$50000
  
  // Comparación ==
  var emp3 = Empleado('Ana', 50000);
  print(emp1 == emp3);  // true
  
  // Operador +
  var suma = emp1 + emp2;
  print(suma);
  
  // Operador >
  print(emp2 > emp1);  // true
  
  // Operador []
  print(emp1['nombre']);   // Ana
  print(emp1['salario']);  // 50000
  
  // call()
  emp1();  // Ana gana \$50000 al mes
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
              '7. Métodos Async/Await',
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
                '''class ServicioAPI {
  // MÉTODO asíncrono que retorna Future
  Future<String> obtenerDatosUsuario(int id) async {
    print('📡 Obteniendo datos del usuario \$id...');
    
    // Simular petición a API
    await Future.delayed(Duration(seconds: 2));
    
    return 'Usuario \$id: Juan Pérez';
  }
  
  // MÉTODO asíncrono con manejo de errores
  Future<Map<String, dynamic>> obtenerPerfil(int userId) async {
    try {
      print('🔍 Buscando perfil...');
      await Future.delayed(Duration(seconds: 1));
      
      if (userId <= 0) {
        throw Exception('ID de usuario inválido');
      }
      
      return {
        'id': userId,
        'nombre': 'María García',
        'email': 'maria@email.com',
        'edad': 28,
      };
    } catch (e) {
      print('❌ Error: \$e');
      rethrow;
    }
  }
  
  // MÉTODO con Stream - datos continuos
  Stream<int> contadorProgreso() async* {
    for (int i = 0; i <= 100; i += 10) {
      await Future.delayed(Duration(milliseconds: 300));
      yield i;  // Emitir valor
    }
  }
  
  // MÉTODO que consume múltiples Futures
  Future<void> procesarMultiplesUsuarios(List<int> ids) async {
    print('📊 Procesando \${ids.length} usuarios...\\n');
    
    // Procesar todos en paralelo
    var resultados = await Future.wait(
      ids.map((id) => obtenerDatosUsuario(id))
    );
    
    print('\\n✅ Resultados:');
    for (var resultado in resultados) {
      print('  • \$resultado');
    }
  }
}

void main() async {
  var api = ServicioAPI();
  
  // Llamar método asíncrono
  var datos = await api.obtenerDatosUsuario(1);
  print('✅ \$datos\\n');
  
  // Método con manejo de errores
  try {
    var perfil = await api.obtenerPerfil(123);
    print('Perfil: \$perfil\\n');
  } catch (e) {
    print('Error al obtener perfil\\n');
  }
  
  // Stream
  print('📈 Progreso:');
  await for (var progreso in api.contadorProgreso()) {
    print('  \$progreso%');
  }
  
  // Múltiples usuarios
  print('\\n');
  await api.procesarMultiplesUsuarios([1, 2, 3]);
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
                    '• Usa nombres descriptivos para métodos (verbos)\n'
                    '• Mantén métodos cortos y con una sola responsabilidad\n'
                    '• Usa getters/setters en lugar de acceso directo\n'
                    '• Métodos privados comienzan con _ (guion bajo)\n'
                    '• Documenta métodos complejos con comentarios\n'
                    '• Prefiere métodos de instancia sobre estáticos\n'
                    '• Usa async/await para operaciones asíncronas\n'
                    '• Valida parámetros al inicio del método',
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
                    '• Métodos demasiado largos (más de 50 líneas)\n'
                    '• Modificar parámetros directamente\n'
                    '• Métodos con demasiados parámetros (más de 5)\n'
                    '• Lógica compleja sin dividir en métodos privados\n'
                    '• No manejar errores en métodos async\n'
                    '• Efectos secundarios inesperados\n'
                    '• No validar entrada de datos\n'
                    '• Usar this cuando no es necesario',
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
              '9. Resumen',
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
                    '1️⃣ Métodos son funciones que pertenecen a una clase\n\n'
                    '2️⃣ Tienen acceso al estado del objeto (this)\n\n'
                    '3️⃣ Definen el comportamiento de los objetos\n\n'
                    '4️⃣ Pueden ser de instancia, estáticos o privados\n\n'
                    '5️⃣ Getters y setters controlan el acceso a propiedades\n\n'
                    '6️⃣ Pueden ser síncronos o asíncronos (async/await)\n\n'
                    '7️⃣ La diferencia principal con funciones es la asociación a una clase\n\n'
                    '8️⃣ Son fundamentales para la POO y encapsulación',
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

