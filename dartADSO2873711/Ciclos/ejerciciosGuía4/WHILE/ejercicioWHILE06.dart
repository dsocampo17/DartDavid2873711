import 'dart:io';

void main() {
  print("Ingrese el número de alumnos:");
  int n = int.parse(stdin.readLineSync()!);
  
  // Variables para almacenar la suma total de edades
  double sumaEdadesHombres = 0.0;
  double sumaEdadesMujeres = 0.0;
  double sumaEdadesGrupo = 0.0;

  // Contadores para hombres, mujeres y grupo
  int contadorHombres = 0;
  int contadorMujeres = 0;
  int contadorGrupo = 0;
  
  // Bucle while para solicitar el género y la edad de cada alumno
  while (contadorGrupo < n) {
    print("Ingrese el género del alumno ${contadorGrupo + 1} (Hombre/Mujer):");
    String genero = stdin.readLineSync()!.toLowerCase();
    
    print("Ingrese la edad del alumno ${contadorGrupo + 1}:");
    int edad = int.parse(stdin.readLineSync()!);
    
    // Sumar la edad al contador correspondiente y a la suma total de edades
    if (genero == "hombre") {
      sumaEdadesHombres += edad;
      contadorHombres++;
    } else if (genero == "mujer") {
      sumaEdadesMujeres += edad;
      contadorMujeres++;
    }
    
    sumaEdadesGrupo += edad;
    contadorGrupo++;
  }
  
  // Calcular los promedios
  double promedioEdadHombres = sumaEdadesHombres / contadorHombres;
  double promedioEdadMujeres = sumaEdadesMujeres / contadorMujeres;
  double promedioEdadGrupo = sumaEdadesGrupo / contadorGrupo;
  
  // Imprimir los promedios
  print("El promedio de edades de hombres es: $promedioEdadHombres");
  print("El promedio de edades de mujeres es: $promedioEdadMujeres");
  print("El promedio de edades del grupo es: $promedioEdadGrupo");
}
