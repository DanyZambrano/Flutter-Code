// Record: Es una coleccion de multiples tipos (variables simples, listas, map, sets)

void main() {




  var record = ('hola', a: 2, b: true, 'bye', true, 12.67, c: [1,2,3]);
  print(record.$1); 
  print(record.a); 
  print(record.b); 
  print(record.$2);
  print(record.c);



  (String, int) record2;
  record2 = ('A string', 123);




  ({int a, bool b}) record3;
  record3 = (a: 123, b: true);



  ({int a, int b}) recordAB = (a: 1, b: 2);




  // Respuesta de backend con multiples valores
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': true,
  };

  var (name, age) = userInfo(json);

}
