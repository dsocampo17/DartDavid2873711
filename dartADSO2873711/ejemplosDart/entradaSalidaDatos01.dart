import 'dart:io';


void main() {
  //DEFINICION DE VARIABLES
  String? nombre;
  //nomvbres = "Juan";
  //ENTRADA Algoritmo
  stdout.writeln("Ejemplo 01 - entrada/salida de Datos");
  stdout.write("Digite su nombre: ");
  nombre = stdin.readLineSync();
  //SALIDA Algoritmo
  print("Su nombre es: $nombre");
}
