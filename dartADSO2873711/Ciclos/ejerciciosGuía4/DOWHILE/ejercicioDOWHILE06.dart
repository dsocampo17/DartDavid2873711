import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje DOWHILE 06
  /* Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en cada una de 
  las 5 unidades de la materia. Al final que escriba el número de control del alumno que obtuvo mayor promedio. 
  Suponga que los alumnos tienen diferentes promedios. 
  */
  // Variables
  double prom, mayorPromedio = 0, sumaCalific = 0, calificacion;
  int mejorNumControl = 0, cantidadEstudiantes, numControl = 0, contador = 0;

  print("Cuántos estudiantes están en el curso");
  cantidadEstudiantes = int.parse(stdin.readLineSync()!);

  do {
    print("Número de control del estudiante #${contador + 1}");
    numControl = int.parse(stdin.readLineSync()!);

    sumaCalific = 0;
    for (int i = 0; i < 5; i++) {
      print("Digite la nota ${i + 1}");
      calificacion = double.parse(stdin.readLineSync()!);
      while (calificacion < 0 || calificacion > 5) {
        print("Nota incorrecta, ingrese de nuevo la nota");
        calificacion = double.parse(stdin.readLineSync()!);
      }
      sumaCalific += calificacion;
    }

    prom = sumaCalific / 5;
    if (prom > mayorPromedio) {
      mayorPromedio = prom;
      mejorNumControl = numControl;
      print("Hasta el momento, el mayor promedio es: $mayorPromedio del estudiante con número de control: $mejorNumControl");
    }

    print('*' * 50);
    contador++;
  } while (contador < cantidadEstudiantes);

  print("El mayor promedio es: $mayorPromedio");
  print("El número de control del mejor estudiante es $mejorNumControl");
}