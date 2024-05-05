import 'dart:io';

void main() {
  //David Ocampo - EJE Condicional Anidado 08
  /*
  El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un program
  para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo se calculará de
  la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente de 40 hrs. se paga al doble
  de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota normal por hora, si las horas 
  exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota por hora. Se pedirá el nombre 
  del empleado, el número de horas trabajadas y la cuota por hora. mostrar en pantalla el nombre del empleado,
  el número de horas trabajadas y su sueldo
  */
  // Declaración de variables
  String nombreEmpleado;
  int horasTrabajadas;
  double cuotaPorHora,sueldo, sueldoExtra, sueldoTotal;
  // Entrada
  print("Ingrese el nombre del empleado:");
  nombreEmpleado = stdin.readLineSync()!;

  print("Ingrese el número de horas trabajadas:");
  horasTrabajadas = int.parse(stdin.readLineSync()!);

  print("Ingrese la cuota por hora:");
  cuotaPorHora = double.parse(stdin.readLineSync()!);
  // Proceso
  if (horasTrabajadas <= 40) {
    sueldo= horasTrabajadas * cuotaPorHora;
    sueldoExtra = 0; //Se paga cuota normal por hora

  } else if (horasTrabajadas <= 50) {
    sueldo = horasTrabajadas * cuotaPorHora;
    sueldoExtra= (horasTrabajadas - 40) * (2 * cuotaPorHora);

  } else {
    sueldo = horasTrabajadas * cuotaPorHora; 
    sueldoExtra = (horasTrabajadas - 50) * (3 * cuotaPorHora);
  }
  sueldoTotal = sueldo + sueldoExtra + sueldoExtra;
  // Salida
  print("\nNombre del empleado: $nombreEmpleado");
  print("Horas trabajadas: $horasTrabajadas");
  print("Sueldo total: $sueldoTotal");
}
