/* 
  Control de Flujo    If - Else
  Es una evaluacion de una condicion
*/

void main() {
  int edad = 18;
  String resultado;

  if (edad <= 18) {
    resultado = "Es menor de edad";
  } else {
    resultado = "Es mayor de edad";
  }

  print(resultado);

  if (edad <= 18) {
    resultado = "Es menor de edad";
  } else if (edad == 21) {
    resultado = "Puede ir";
  } else if (edad == 32) {
    resultado = "Acceso Limitado";
  } else if (edad == 43) {
    resultado = "Acceso Gratis";
  } else {
    resultado = "Acceso Full";
  }


  

  print(resultado);

  resultado = (edad >= 18) ? "Menor" : "Mayor";
  print(resultado);
}
