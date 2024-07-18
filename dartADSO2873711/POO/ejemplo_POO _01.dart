import 'dart:io';

class Perro {
  // Atributos
  String nombre;
  String raza;
  double peso;

  // Constructor: funcion que se ejecuta cuando se crea un objeto de la clase
  Perro(this.nombre, this.raza, this.peso);
  
  // Métodos
  void correr(){
    print("El perro ${this.nombre} corre ");
  }
  void ladrar(){
    print("El perro ${this.nombre} ladra ");
  }
  void dormir(){
    print("El perro ${this.nombre} duerme ");
  }
  void mostrarInformacion(){
    print("El perro se llama ${this.nombre}, es de raza ${this.raza} y pesa ${this.peso} kg ");
  }
  // Fin clase
}

void main(List<String> args) {
  // Creamos el objeto clase perro
  int perro; // vble tipo Entero
  String perros; // vble tipo Cadena
  bool perross; // vble tipo Booleano
  Perro perro1;
  perro1 = Perro("Firu", "Pitbull", 30.5);
  perro1.correr();
  perro1.ladrar();
  perro1.dormir();
  perro1.mostrarInformacion();
  /*******************************************************/
  print("*" * 50);
  Perro perro2 = Perro("Mac", "Pincher", 4.0);
  perro2.correr();
  perro2.ladrar();
  perro2.dormir();
  perro2.mostrarInformacion();
  /*******************************************************/
  print("*" * 50);
  String nombrePerro;
  String razaPerro;
  double pesoPerro;
  print("Ingrese el nombre del perro");
  nombrePerro = stdin.readLineSync()!;
  print("Ingrese la raza del perro");
  razaPerro = stdin.readLineSync()!;
  print("Ingrese el peso del perro");
  pesoPerro = double.parse(stdin.readLineSync()!);
  Perro perro3 = Perro(nombrePerro, razaPerro, pesoPerro);
  perro3.correr();
  perro3.ladrar();
  perro3.dormir();
  perro3.mostrarInformacion();
  /*******************************************************/
  print("*" * 50);
  String nombrePerro2 = "Orus";
  String razaPerro2 = "Golden Retriever";
  double pesoPerro2 = 36;
  Perro perro4 = Perro(nombrePerro, razaPerro, pesoPerro);
  perro4.correr();
  perro4.ladrar();
  perro4.dormir();
  perro4.mostrarInformacion();


}