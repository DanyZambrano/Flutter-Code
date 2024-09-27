void main() {
  // Desempaqueta valores en otras colecciones.
  // Es parte de la sintaxis de los collections

  [...a + b];

  var list = [1, 2, 3];



  var list2 = [0, ...list];
  print(list2);


  //Esto es una validacion por si es null el parametro que se recibe
  var list3 = [0, ...?list];
  print(list3);
}
