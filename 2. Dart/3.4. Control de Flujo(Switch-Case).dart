/* 
  Control de Flujo    Switch-Case
*/

import 'dart:math';

void main() {
  //int valor = Random().nextInt(5);
  String nombre = "Samuel";
  //print("el valor es: $valor");

  switch (nombre) {
    case "Dany":
      print("no gano");
      break;

    case "Santiago":
      print("si gano");
      break;

    case "Samuel":
      print("casi gano");
      break;

    default:
      print("ningun caso");
  }
}
