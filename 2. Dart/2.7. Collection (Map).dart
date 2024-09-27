// Los Maps son objetos asociados a Keys y Values {key:value}
// Como un Diccionario
// La key es unica

void main() {
  // Dart infiere que es un Map.  Map<String, String>
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  print(gifts);

  // Dart infiere que es un Map.  Map<int, String>
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(nobleGases);

  var regalos = Map<String, String>(); //un Map vacio
  regalos['first'] = 'partridge';
  regalos['second'] = 'turtledoves';
  regalos['fifth'] = 'golden rings';
  print(regalos);

  var regaloz = Map<int, String>();
  regaloz[2] = 'helium';
  regaloz[10] = 'neon';
  regaloz[18] = 'argon';
  print(regaloz);

  Map<dynamic, dynamic> nombres = {
    1: "Dany", 
    2: "Saniago", 
    3: "Samuel"
  };
  print(nombres);

  Map<int, int> numeros = {
    1: 8098, 
    2: 100, 
    3: 5000
  };
  print(numeros);

  
}
