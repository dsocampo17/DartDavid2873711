import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje While 06
  /* Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos
  */

  // DEFINICIÓN
  double promedioM=0, promedioH=0, promedio;
  int cantidadAlumnos;
  int cantMujeres=0, cantHombres=0 ;
  int edadMujeres=0, edadHombres=0, contador=0, edad=0, edadTotal=0;
  String? genero;

  // ENTRADA
  print("Escriba la cantidad de alumnos a evaluar");
  cantidadAlumnos = int.parse(stdin.readLineSync()!);
  while (contador < cantidadAlumnos) {
    print("En caso de ser Mujer, escriba M, de lo contrario escriba H ");
    genero = stdin.readLineSync();
    print("Escriba su edad");
    edad = int.parse(stdin.readLineSync()!);

    if (genero!.toUpperCase() == "H") {
      cantHombres ++;
      edadHombres += edad;
      promedioH = edadHombres / cantHombres;
    }

    else if (genero.toUpperCase() == "M") {
      cantMujeres ++;
      edadMujeres += edad;
      promedioM = edadMujeres / cantMujeres;
    }

    else {
      print("El genero es no es válido");
    }
    contador++;
  }

  promedio = edadTotal / cantidadAlumnos;

  print("El promedio de edades en $cantHombres hombres es: $promedioH años");
  print("El promedio de edades en $cantMujeres mujeres es: $promedioM años");
  print("El promedio de edades del grupo es: $promedio");
}