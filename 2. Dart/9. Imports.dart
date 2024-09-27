// Importando librerias del Dart Code
import 'dart:math';

// Importando libererias de paquetes externos
import 'package:test/test.dart';

// Importando archivos internos
import 'path/to/my_other_file.dart';

//alias
import 'package:lib2/lib2.dart' as libCalculo;


// Import solo una parte.
import 'package:lib1/lib1.dart' show calculo;

// Import todo excepto ...
import 'package:lib2/lib2.dart' hide calculo;

void main() {
  
  lib2.Element element2 = libCalculo.Element();


}