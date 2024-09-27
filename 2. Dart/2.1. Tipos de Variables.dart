void main() {
  //DART: Es un Lenguaje Tipado Fuerte
  //var: sin especifificar el tipo, Inferir
  //Cualquier cosa colocado como variable es un OBJETO (numeros, funciones, null, etc).
  //Y cada OBJETO es una INSTACIA DE CLASE.

  //tipos de Variables
  var nombre = 'Voyager I';
  var anio = 1977;
  var diamtero = 3.7;
  var exponents = 1.42e5;
  var isEnable = true;
  var hex = 0xDEADBEEF;
  var hi = 'Hola 🇩🇰';
  var hello = '\u2665'; // ♥  Son Runes o Unicodes
  var planetas = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var imagen = {
    'tags': ['saturno'],
    'url': 'https://picsum.photos/250?image=9'
  };



  var visibility = isEnable ? 'WidgetA' : 'WidgetB';

  print(nombre);
  print(anio);
  print(diamtero);
  print(planetas);
  print(imagen);
}
