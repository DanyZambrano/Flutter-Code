import 'package:flutter/material.dart';

class ColeccionesPage extends StatelessWidget {
  const ColeccionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '¿Qué son las Colecciones en Dart?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Las colecciones son estructuras de datos que permiten almacenar múltiples valores en una sola variable. '
              'En lugar de declarar múltiples variables individuales, puedes agrupar datos relacionados de manera organizada y eficiente.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Text(
              '¿Para qué sirven?',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('• Almacenar múltiples valores de forma organizada'),
                Text('• Manipular grupos de datos eficientemente'),
                Text('• Iterar sobre conjuntos de elementos'),
                Text('• Gestionar datos dinámicos que crecen o decrecen'),
                Text('• Implementar estructuras de datos complejas'),
                Text('• Facilitar operaciones como búsqueda, filtrado y ordenamiento'),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              '1. Listas (List)',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.blue.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Las listas son colecciones ordenadas que pueden contener elementos duplicados. Son similares a los arreglos en otros lenguajes.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '// Ejemplo simple',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'List<String> frutas = [\'manzana\', \'banana\', \'naranja\'];',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(frutas[0]); // manzana',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Operaciones comunes',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'frutas.add(\'uva\');          // Agregar elemento',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'frutas.remove(\'banana\');    // Eliminar elemento',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(frutas.length);       // Longitud de la lista',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '2. Conjuntos (Set)',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.purple.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Los conjuntos son colecciones no ordenadas que NO permiten elementos duplicados. Útiles cuando necesitas elementos únicos.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '// Ejemplo simple',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Set<int> numeros = {1, 2, 3, 4, 5};',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'numeros.add(3); // No se agrega, ya existe',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Eliminar duplicados de una lista',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'List<int> conDuplicados = [1, 2, 2, 3, 3, 3];',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Set<int> sinDuplicados = conDuplicados.toSet();',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(sinDuplicados); // {1, 2, 3}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '3. Mapas (Map)',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.orange.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Los mapas son colecciones de pares clave-valor. Cada clave es única y está asociada a un valor específico.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '// Ejemplo simple',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Map<String, int> edades = {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  \'Juan\': 25,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  \'María\': 30,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  \'Pedro\': 28',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '};',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// Acceder y modificar',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(edades[\'Juan\']);  // 25',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'edades[\'Ana\'] = 27;     // Agregar nuevo par',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'edades.remove(\'Pedro\'); // Eliminar par',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Ejemplos Avanzados',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.teal.shade700,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              'Operaciones avanzadas con colecciones:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '// 1. Filtrado y mapeo',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8];',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'var pares = numeros.where((n) => n % 2 == 0).toList();',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'var dobles = numeros.map((n) => n * 2).toList();',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// 2. Reducción (suma total)',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'int suma = numeros.reduce((a, b) => a + b);',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// 3. Ordenamiento',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'List<String> nombres = [\'Zoe\', \'Ana\', \'Carlos\'];',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'nombres.sort(); // Orden alfabético',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// 4. Listas anidadas (matriz)',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'List<List<int>> matriz = [',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  [1, 2, 3],',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  [4, 5, 6],',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  [7, 8, 9]',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '];',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'print(matriz[1][2]); // 6',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '// 5. Map con objetos complejos',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Map<String, Map<String, dynamic>> usuarios = {',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  \'user1\': {\'nombre\': \'Juan\', \'edad\': 25},',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '  \'user2\': {\'nombre\': \'Ana\', \'edad\': 30}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '};',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Métodos Útiles de Colecciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.indigo.shade700,
                  ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('• .add() / .addAll() - Agregar elementos'),
                Text('• .remove() / .removeAt() - Eliminar elementos'),
                Text('• .contains() - Verificar si existe un elemento'),
                Text('• .length - Obtener el tamaño'),
                Text('• .isEmpty / .isNotEmpty - Verificar si está vacía'),
                Text('• .first / .last - Obtener primer/último elemento'),
                Text('• .forEach() - Iterar sobre elementos'),
                Text('• .map() - Transformar elementos'),
                Text('• .where() - Filtrar elementos'),
                Text('• .sort() - Ordenar elementos'),
                Text('• .clear() - Vaciar la colección'),
              ],
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lightbulb, color: Colors.blue.shade700),
                      const SizedBox(width: 8),
                      Text(
                        'Consejo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Elige la colección adecuada para tu caso:\n'
                    '• List: cuando el orden importa y puedes tener duplicados\n'
                    '• Set: cuando necesitas elementos únicos\n'
                    '• Map: cuando necesitas asociar claves con valores',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Divider(),
            const SizedBox(height: 16),
            Text(
              'Prueba interactiva:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            CollectionDemo(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class CollectionDemo extends StatefulWidget {
  const CollectionDemo({super.key});

  @override
  State<CollectionDemo> createState() => _CollectionDemoState();
}

class _CollectionDemoState extends State<CollectionDemo> {
  final List<String> miLista = ['Flutter', 'Dart', 'Mobile'];
  final Set<String> miSet = {'único1', 'único2', 'único3'};
  final Map<String, int> miMap = {'elementos': 5, 'usuarios': 10};
  
  final TextEditingController _listController = TextEditingController();
  final TextEditingController _setController = TextEditingController();
  final TextEditingController _mapKeyController = TextEditingController();
  final TextEditingController _mapValueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sección de Lista
          Text(
            'Lista (permite duplicados):',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: miLista.map((item) => Chip(
              label: Text(item),
              backgroundColor: Colors.blue.shade100,
              deleteIcon: const Icon(Icons.close, size: 18),
              onDeleted: () {
                setState(() {
                  miLista.remove(item);
                });
              },
            )).toList(),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _listController,
                  decoration: const InputDecoration(
                    hintText: 'Agregar a lista',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  if (_listController.text.isNotEmpty) {
                    setState(() {
                      miLista.add(_listController.text);
                      _listController.clear();
                    });
                  }
                },
                child: const Text('Agregar'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          
          // Sección de Set
          Text(
            'Set (NO permite duplicados):',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple.shade700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: miSet.map((item) => Chip(
              label: Text(item),
              backgroundColor: Colors.purple.shade100,
              deleteIcon: const Icon(Icons.close, size: 18),
              onDeleted: () {
                setState(() {
                  miSet.remove(item);
                });
              },
            )).toList(),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _setController,
                  decoration: const InputDecoration(
                    hintText: 'Agregar a set (prueba duplicado)',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  if (_setController.text.isNotEmpty) {
                    bool added = miSet.add(_setController.text);
                    setState(() {
                      _setController.clear();
                    });
                    if (!added) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('¡Ya existe ese elemento en el Set!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  }
                },
                child: const Text('Agregar'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          
          // Sección de Map
          Text(
            'Map (pares clave-valor):',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange.shade700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: miMap.entries.map((entry) => Chip(
              label: Text('${entry.key}: ${entry.value}'),
              backgroundColor: Colors.orange.shade100,
              deleteIcon: const Icon(Icons.close, size: 18),
              onDeleted: () {
                setState(() {
                  miMap.remove(entry.key);
                });
              },
            )).toList(),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _mapKeyController,
                  decoration: const InputDecoration(
                    hintText: 'Clave',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: _mapValueController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Valor (número)',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  if (_mapKeyController.text.isNotEmpty && 
                      _mapValueController.text.isNotEmpty) {
                    setState(() {
                      miMap[_mapKeyController.text] = 
                          int.tryParse(_mapValueController.text) ?? 0;
                      _mapKeyController.clear();
                      _mapValueController.clear();
                    });
                  }
                },
                child: const Text('Agregar'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.amber.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estadísticas:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade900,
                  ),
                ),
                const SizedBox(height: 4),
                Text('Lista tiene ${miLista.length} elementos'),
                Text('Set tiene ${miSet.length} elementos únicos'),
                Text('Map tiene ${miMap.length} pares clave-valor'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _listController.dispose();
    _setController.dispose();
    _mapKeyController.dispose();
    _mapValueController.dispose();
    super.dispose();
  }
}

