import 'dart:io';
void main (List<String> args) {
  // David Ocampo - Eje While 05
  /* Obtener el promedio de calificaciones de un grupo de n alumnos.
  */

  // Definir variables
  double promedio=0, notaFinal=0;
  int cantAlumnos=15, contador = 0;
  double sumaCalif=0;
  // Entrada 
  print("Las notas finales del grupo de 15 estudiantes de acuerdo con su nota final es:");
  // Proceso 
  while (contador<cantAlumnos) {
  print("Ingrese su nota final");
  notaFinal= double.parse(stdin.readLineSync()!);
  
  // Salida
    sumaCalif += notaFinal;
    
    contador++;
  }
  
   promedio= sumaCalif/notaFinal;
  
  print("El promedio de calificaciones del grupo es: $promedio");
}
