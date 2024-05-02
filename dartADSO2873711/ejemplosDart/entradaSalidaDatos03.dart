import 'dart:io';

void main (){
  print("Ejemplo 03 - entrada/salida de Datos");
  //DEFINICION
  double nota1, nota2, nota3, promedio;
  //ENTRADA Alg
  print("Ingrese la nota 1 ");
  nota1 = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la nota 2 ");
  nota2 = double.parse(stdin.readLineSync()!);
  print("Ingrese la nota 3 ");
  nota3 = double.parse(stdin.readLineSync()!);
  //PROCESO
  promedio = (nota1 + nota2 + nota3) / 3;
  //SALIDA Alg
  stdout.write("El promedio de las notas es: $nota1,$nota2, y $nota3");
  stdout.write("y el promedio es: $promedio");
}