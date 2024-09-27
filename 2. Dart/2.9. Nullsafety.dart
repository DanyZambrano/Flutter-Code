// Se introdujo desde el Dart 2.12

// Previene un error que resulta en el acceso de variables seteadas null
// Se detecta en tiempo de Compilacion y no de ejecucion.

// Debes inicializar avriables antes de usarlas para evitar null

import 'dart:math';

void main() {
  var i;
  i = null;
  i.abs();

  // Para evitar un nullability si agrega ? al final del tipo de variable
  int? lineCount;
  assert(lineCount == null);

  // nullsafety asignarles un valor antes de usarlas
  int lineCount2 = 0;
  lineCount2 = null;
}
