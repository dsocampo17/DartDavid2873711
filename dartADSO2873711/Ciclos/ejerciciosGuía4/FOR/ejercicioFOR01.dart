import 'dart:io';

void main(List<String> args) {
  /* David Ocampo - Eje FOR 01
  Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado
  de Algoritmos.
  */
  // Definición Vbles
  int notas, numNotas;
  double suma = 0, promedio;
  for(int i = 0; i < 7; i++){
    print("Digite la nota: "+(i+1).toString());
    notas = int.parse(stdin.readLineSync()!);
    suma = suma + notas;
  }
  promedio = suma / 7;
  print("El promedio es: $promedio");
}