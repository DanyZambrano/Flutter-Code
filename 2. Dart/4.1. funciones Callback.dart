/* 
  funciones Callback
 
*/

void main() {
  
  obtenerData("H49823ty", (Map users) {
    print(users);
  });
}

void obtenerData(String valorA, Function callback) {
    Map usuario = {"valorA": valorA, "nombre": "Dany"};

    callback(usuario);
  }
