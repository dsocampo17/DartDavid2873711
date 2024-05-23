import 'dart:io';

void main(List<String> args) {
  /*
  Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, cuantos son
  positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.
  */

  // Definición Variables
  List<double> num = [];
  int cantNumeros = 15;
  double numIngresado, sumaNegativos = 0, sumaCeros = 0, sumaPositivos = 0;
  int cantNegativos = 0, cantCeros = 0, cantPositivos = 0;

  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el número #${i + 1}");
    numIngresado = double.parse(stdin.readLineSync()!);
    num.add(numIngresado);
    if (numIngresado == 0) {
      cantCeros++;
      sumaCeros += numIngresado;
    } else if (numIngresado < 0) {
      cantNegativos++;
      sumaNegativos += numIngresado;
    } else {
      cantPositivos++;
      sumaPositivos += numIngresado;
    }
  }
  print(num);
  print("La suma de los negativos es: $sumaNegativos");
  print("La suma de los ceros es: $sumaCeros");
  print("La suma de los positivos es: $sumaPositivos");
}