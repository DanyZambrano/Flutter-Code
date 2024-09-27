

void main() {

  // String: Cadena de caracteres (Letras o simbolos)
  var nombre = "Dany";
  String saludo = "Hola";

  print(nombre);
  print(saludo);
  print("Mi Mensaje..");

  nombre = "Omar";
  print(nombre);


  //Caracteres
  var cadena = "Epa!";
  print(cadena[0]);


  //Longitud
  print(cadena.length);


  //Concatenar
  nombre = "Dany";
  var apellido = "Zambrano";
  print(nombre + " " + apellido);


  //Salto de linea
  var nombre1 = "Dany";
  var apellido1 = "Zambrano";
  print("$nombre1\n$apellido1");


  //Multiple
  String frase = """
  Hola como te va? esta es una frase extensa
  y con una estructura, sirve para ejemplificar 
  el tema de strings extenson y para mejorar la visualizacion 
  al developer.
  """;
  print(frase);



  //Interpolar
  print("${nombre}" + " " + "${apellido}");
  print("$nombre" + " " + "$apellido");
  print("Su nombre completo es: $nombre" + " " + "$apellido");


  //Uppercase y lowerCase
  String mensaje = "hola Como te va?";
  print(mensaje);
  print(mensaje.toUpperCase());
  print(mensaje.toLowerCase());


  //Contain
  print(frase.contains("sirve"));
  

  //Int to.String()
  int x = 5;
  print("El valor es: ${x.toString()}, segun nuestras mediciones");


  //Ternary condicion ? Opcion 1 : Opcion 2
  int x1 = 5;
  print("El resultado es: ${x1 < 10 ? "Algunas" : "Muchas"} personas en la playa");

}