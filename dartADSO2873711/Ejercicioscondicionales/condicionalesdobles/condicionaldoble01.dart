import 'dart:io';
void main(List<String> args) {
  // David Ocampo - EJE Condicional Doble 01
  /*
  Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
  */
  // Definicion variables
  double num1, num2;
  // Entrada
  print("Digite numero 1 y 2");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  // Proceso
  if (num1>num2){
    print("$num2, $num1");
  }else{
    print("$num1, $num2");
  }
}