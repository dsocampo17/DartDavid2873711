import 'dart:io';

void main() {
  print("Ingrese el número de alumnos:");
  int n = int.parse(stdin.readLineSync()!);
  
  // Variable para almacenar la suma total de calificaciones
  double sumaCalificaciones = 0.0;

  int contador = 0;
  
  // Bucle while para solicitar las calificaciones de cada alumno
  while (contador < n) {
    print("Ingrese la calificación del alumno ${contador + 1}:");
    double calificacion = double.parse(stdin.readLineSync()!);
    
    // Añadir la calificación a la suma total
    sumaCalificaciones += calificacion;
    
    contador++;
  }
  
  // Calcular el promedio
  double promedio = sumaCalificaciones / n;
  
  // Imprimir el promedio
  print("El promedio de calificaciones del grupo es: $promedio");
}
