import 'dart:io';

void main(List<String> args) {
  /*
  Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original
  e imprimir el vector resultante.
  */

  // Definición Variables
  List<double> num = [];
  List<double> numInverso = [];
  int cantNumeros = 8;
  double numIngresado;

  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el número #${i + 1}");
    numIngresado = double.parse(stdin.readLineSync()!);
    num.add(numIngresado);
    numInverso.add(numIngresado);
  }
  numInverso = numInverso.reversed.toList();
  print(num);
  print(numInverso);
}