import 'dart:io';

void main() {
  print("Ejemplo 02 - Entrada/Salida Datos");
  //Definicion 
  int num1, num2, suma;
  //Entrada alg
  print("Ingrese el valor del numero 1");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese valor del numero 2");
  num2 =  int.parse(stdin.readLineSync()!);
  //Proceso
  suma = num1 + num2;
  //Salida 
  print("La suma de ambos numeros equivale a: $suma");
} 