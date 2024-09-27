// Si no hay intencion de cambiar el valor en una variable
// Lo mejor es usar Final o Const

// Una vez seteado no puede cambiar el valor.

// Final es un objeto que No puede ser modificado pero sus campos pueden ser modificados.
// Const es un objeto que No puede ser modificado y sus campos tampoco. Completamente inmutable.

void main() {

  final nombre = 'Dany';
  nombre = "Santiago";          // Error en tiempo de Compilacion / Evaluacion
  final String nickname = 'Dan';



  var constantList = const [1, 2, 3];
  constantList[1] = 1;                // Da error en tiempo de Ejecucion



  const bar = 1000000;
  const double atm = 1.01325 * bar;



  final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
  };


   constantMap[2] = 'Helium'; // This line will cause an error.


}
