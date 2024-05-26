import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje FOR 04
  /* Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos.
  Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo. 
  */

  // Definición 
  int cantidadAlumnos = 40; 
  double nota, suma = 0;
  double notaMenor = double.infinity; 

  for (var i = 0; i < cantidadAlumnos; i++) {
    // Solicitar la calificación del alumno
    print("Ingrese la nota del alumno ${(i + 1)}:");
    nota = double.parse(stdin.readLineSync()!);

   
    while (nota < 0 || nota > 5) {
      print("La nota está en rango incorrecto (debe ser entre 0 y 5).");
      print("Ingrese de nuevo la nota del alumno ${(i + 1)}:");
      nota = double.parse(stdin.readLineSync()!);
    }

    suma += nota;

    if (nota < notaMenor) {
      notaMenor = nota;
    }
  }

  double promedio = suma / cantidadAlumnos;

  print("El promedio de calificaciones del grupo es: $promedio");
  print("La calificación más baja del grupo es: $notaMenor");
}