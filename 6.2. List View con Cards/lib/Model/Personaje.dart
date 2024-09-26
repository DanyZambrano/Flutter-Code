class Personaje {
  String Nombre;
  String Poder;
  String Edad;
  String Imagen;

  Personaje(
      {this.Nombre = "", this.Poder = "", this.Edad = "", this.Imagen = ""});
}

List<Personaje> personajes = [
  Personaje(Nombre: "Batman", Poder: "Lider", Edad: "50", Imagen: "assets/images/batman.jpg"),
  Personaje(Nombre: "El Pinguino", Poder: "Caos", Edad: "60", Imagen: "assets/images/pinguino.webp"),
  Personaje(Nombre: "El Guason", Poder: "Crimen", Edad: "60", Imagen: "assets/images/guason.jpg"),
  Personaje(Nombre: "Mujer Maravilla", Poder: "Diosa", Edad: "1000", Imagen: "assets/images/mujermaravilla.png"),
  Personaje(Nombre: "Superman", Poder: "Invensible", Edad: "100", Imagen: "assets/images/superman.jpg"),
  Personaje(Nombre: "Robin", Poder: "Artes MArciales", Edad: "30", Imagen: "assets/images/robin.jpg"),
  Personaje(Nombre: "Chita", Poder: "Arte Animal", Edad: "36", Imagen: "assets/images/chita.jpg"),
  Personaje(Nombre: "Cyborg", Poder: "Computadoras", Edad: "20", Imagen: "assets/images/cyborg.jpg"),
];
