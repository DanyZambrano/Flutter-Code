// Las listas son arrays o un grupo ordenado de objetos.

void main() {
  var list = [1, 2, 3]; // Estos es asumido como una Lista

  var list2 = [
    'Car',
    'Boat',
    'Plane',
  ];

  // Listas
  List<dynamic> miLista = [10, 2];
  List<dynamic> miLista2 = [10, 2.00, 'hola', true];

  print(miLista);
  print(miLista2);

  List<int> miListaNumerica = [1, 2, 3];
  print(miListaNumerica);

  List<String> miListaString = ["Dany", "Zambrano", "Developer", "Dany"];
  print(miListaString);

  miListaString.addAll(["Software", "Familia"]);
  miListaString.addAll(["Santiago", "Samuel"]);
  print(miListaString);

  miListaString.remove(["Developer", "Software"]);
  print(miListaString);

  // Validacion con IF
  var promote = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promote) 'Outlet'];
  print(nav);

  var login = false;
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  // Uso del For
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings);
}
