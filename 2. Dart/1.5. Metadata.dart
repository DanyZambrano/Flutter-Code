

// La metadata sirve para dar mas informacion sobre el codigo
// Inicia con @ seguida de una referencia

//  @Deprecated, @deprecated, @override, @pragma


void main() {

  // Funcion nueva
  void funcionB() {
     // ···
  }

  // Use la [funcionB], la funcionA sera deprecada en la siguiente version.
  @Deprecated('Usa la funcionB')
  void funcionA() {
    funcionB();
  }

  
 

  
}
