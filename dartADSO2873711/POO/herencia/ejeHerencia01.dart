class Animal {
    String color;
    String especie;
    double tamanio;
    Animal(this.color, this.especie, this.tamanio);
    void hacerSonido() {
      print("El animal hace un sonido");
  }
}

// La clase perro hereda de animal
class Perro extends Animal {
  String raza;
  Perro(this.raza, colorUs, especieUs, tamUs):super(colorUs, especieUs,tamUs);
  @override // Se sobreescribe el método del padre
  void hacerSonido() {
    print("El perro ladra");
  }
  void mostrarInfo() {
    print("""
      Especie: $especie
      Color: $color
      Tamaño: $tamanio
      Raza: $raza
""");
  }
}

class Gato extends Animal {
  bool estaVacunado;
  Gato(this.estaVacunado, colorUs, especieUs, tamUs):super(colorUs, especieUs, tamUs);
  @override // Se sobreescribe el método del padre
  void hacerSonido() {
    print("El gato maúlla");
  }
  void mostrarInfo() {
    print("""
      Especie: $especie
      Color: $color
      Tamaño: $tamanio
      Está vacunado: ${estaVacunado ? "Si":"No"}
""");
  }
}
void main(List<String> args) {
  Perro myDog = Perro("Pitbull", "negro", "canino", 20);
  myDog.hacerSonido();
  myDog.mostrarInfo();
  Gato myCat = Gato(false, "blanco", "felino", 10);
  myCat.hacerSonido();
  myCat.mostrarInfo();
}