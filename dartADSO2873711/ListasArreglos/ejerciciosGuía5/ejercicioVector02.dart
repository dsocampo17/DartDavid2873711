import 'dart:io';

void main(List<String> args) {
  /*Llenar dos vectores A y B de 10 elementos cada uno, sumar el elemento uno del vector A con el
    elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e
    imprimir el vector resultante. 
  */

  // Definición Variables
  List<double> numA = [], numB = [], numC = [];
  int cantNumeros = 10;
  double num, sumaNumeros;

  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el número #${i + 1} del vector A");
    num = double.parse(stdin.readLineSync()!);
    numA.add(num);
    print("Ingrese el número #${i + 1} del vector B");
    num = double.parse(stdin.readLineSync()!);
    numB.add(num);
  }
  for (var i = 0; i < cantNumeros; i++) {
    numC.add(numA[i] + numB[i]);
  }
  print(numC);
  
}

  