/* 
  Control de Flujo    For
  Es una evaluacion de una condicion en un bucle
*/

void main() {

  //1
  for (int i = 0; i == 10; i++) {
    print("index $i");
  }
  


  //2
  List<String> listado = ["Audi", "Renault", "Mazda"];

  for (var marca in listado) {
    print(marca);
  }

  

  //3
  for (var marca in listado) {
    if (marca == "Renault") {
      break;
    } else {
      print("La Marca que se puede mostrar: $marca");
    }
  }


  
  //4
  for (int month = 1; month <= 12; month++) {
  print(month);
}

}
