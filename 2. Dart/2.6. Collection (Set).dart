// Los set son Listas desordenadas de un unico item

void main() {
  //Dart asume o infiere que en un Set del tipo String
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  //Set vacio
  var names = <String>{};

  // Set: Son listas de tipo de variable unico
  Set<String> misPalabras = halogens.toSet();
  print(misPalabras);

  Set<String> canciones = {"cancion1", "cancion2", "cancion3"};
  canciones.add("cancion4");
  canciones.add("cancion4");
  canciones.add("cancion4");
  print(canciones);
  print(canciones.length);
}
