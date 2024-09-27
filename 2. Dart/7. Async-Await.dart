/* 
  Async - Await ,, operaciones asyncronas. 
 
*/

Future<String> CrearOrden() async {
  var order = await ObtenerOrder();
  return 'Tu Orden es: $order';
}

Future<String> ObtenerOrder() =>
    Future.delayed(
      const Duration(seconds: 3),
      () => 'La respuesta tardo Mucho',
    );

Future<void> main() async {
  print('Obteniendo Ordenes...');
  print(await CrearOrden());
}
