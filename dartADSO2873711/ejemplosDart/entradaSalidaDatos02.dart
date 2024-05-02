import 'dart:io';

void main (){
  print("Ejemplo 02 - entrada/salida de Datos");
  //DEFINICION
  int num1, num2, suma;
  //ENTRADA Alg
  print("Ingrese valor del número 1 ");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese valor del número 2 ");
  num2 = int.parse(stdin.readLineSync()!);
  //PROCESO
  suma = num1 + num2;
  //SALIDA Alg
  print("La suma de los números es: $suma");
} 