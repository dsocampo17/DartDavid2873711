import "dart:io";
void main (){
  //Definicon de variables
  String? nombre;
  //nombre = "davi";
  //Entrada del algoritmo
  stdout.writeln("Ejemplo Entrada/salida de datos");
  stdout.writeln("Ingrese su nombre");
  nombre=stdin.readLineSync();
  //Salida
  print("Su nombre es : $nombre");
}