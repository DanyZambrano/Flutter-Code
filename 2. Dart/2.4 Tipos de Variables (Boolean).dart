

void main() {
  // Boolean: Valores true or False
  var condicion = true;
  bool condicion2 = false;

  print(condicion);
  print(condicion2);





  // Chequear si es vacio
  var fullName = '';
  print(fullName.isEmpty);

  // Chequear si es zero
  var hitPoints = 0;
  assert(hitPoints == 0);

  // Chequear si es null
  var unicorn = null;
  assert(unicorn == null);

  // Chequear si es NaN
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);






  //Negacion
  print(!condicion);


  //IF expresion
  if (condicion == true) {
    print("OK");
  }

  if (condicion == true) {
    print("Acceso");
  } else {
     print("No Acceso");
  }


  //Ternary condicion ? Opcion 1 : Opcion 2
  bool encendido = true;
  var resultado = encendido ? "Si" : 'No';
  print("Esta encendido: ${resultado}");
}
