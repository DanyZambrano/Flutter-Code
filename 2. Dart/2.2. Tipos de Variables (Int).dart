

void main() {
  // int: Valores numericos   (23)
  // int: Valores numericos con decimales (23.12)
  var edad = 43;
  int valor = 88;
  double valor2 = 88.34;

  print(edad);
  print(valor);
  print(valor2);

  //Sumar Int y Double
  var resultado = edad / valor2;
  print(resultado);


  //Ternary condicion ? Opcion 1 : Opcion 2
  int x1 = 5;
  print(
      "El resultado es: ${x1 < 10 ? "Algunas" : "Muchas"} personas en la playa");


  //Int to.String()
  print("El valor es: ${resultado.toString()}, segun nuestros calculos");

 
  //Parse str a int
  String valor3 = "45";
  print( int.parse(valor3) );


  
}
