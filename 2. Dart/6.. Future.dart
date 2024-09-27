/* 
  Future ,, es una promesa que se va a ejecutar y retornara un resultado
 
*/


 Future<void> createOrder() {
  return Future.delayed(const Duration(seconds: 3), () => print('Ya paso el tiempo de respueta...'));
}

Future<void> createOrder2() {
  return Future.delayed(
    const Duration(seconds: 5),
    () => throw Exception('Excepion lanzada!!'),
  );
}

void main() {

  print(createOrder());

  print(createOrder2());

  print("Obteniendo respuesta.....");



}
