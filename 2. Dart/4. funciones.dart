void main() {
  
  void main2() {
    print('Hello, World!');
  }
  print(main2);

  basica() {
    print("hola");
  }

  print(basica());

  String saludo(String nombre) {
    return "Hola $nombre";
  }

  String mensaje = saludo("Dany");
  print(mensaje);

  int suma(int a, int b) {
    return a + b;
  }

  print(suma(10, 90));

  int sumandos(int a, int b) => a + b;
  print(sumandos(10, 68));

  List<String> archivos = ["danyfile", "santiago", "samuel", "sebas"];
  archivos.where((name) => name.contains('danyfile')).forEach(print);

  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  var result = fibonacci(20);
  print(result);

  void saludar(
      {String? nombre, required String apellido, required int cantidad}) {
    for (var i = 0; i < cantidad; i++) {
      print("$nombre - $apellido - $cantidad");
    }
  }
  saludar(apellido: "zambrano", cantidad: 3);

  List<String> listadoCursos = ["Ios", "React Native", "Android", "Flutter"];
  var nuevosCursos = listadoCursos.where((n) => n != "React Native");
  print(nuevosCursos);


  //external void someFunc(int i);
}
