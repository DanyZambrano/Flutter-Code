/* 
  Control de Flujo    While
  Es una evaluacion de una condicion en un bucle
*/

void main() {
  bool condicion = true;

  while (condicion) {
    print("inicio");
    condicion = false;
  }

  bool condicion2 = true;
  int contador = 0;

  while (condicion2) {
    contador++;
    if (contador == 19) {
      break;
    } else {
      print("aun no se cumple la condicion -> ( $contador )");
    }
  }


  int valor = 0;

  do {
    print(valor.toString());
    valor++;
  } while (valor <= 20);
}
