import 'dart:io';
void main (List<String> args) {
  /* David Ocampo - Eje While 02
  En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en
  ella. El salario se obtiene de la sig. forma:
  Si el obrero trabaja 40 horas o menos se le paga $20 por hora
  Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora
  extra.
  */
  // Definición Variables
  int horasTrabajadas=0, horasExtras=0, cantObreros, contador=0;
  double salario, valorHora=20, valorHoraExtra=25;

  // Entrada
  print("Ingrese la cantidad de obreros");
  cantObreros = int.parse(stdin.readLineSync()!);

  // Proceso
  while(contador < cantObreros) {
    print("Ingrese la cantidad de horas de trabajo");
    horasTrabajadas = int.parse(stdin.readLineSync()!);
    contador++;

    if(horasTrabajadas > 40) {
      horasExtras = horasTrabajadas - 40;
      salario = (40 * valorHora) + (horasExtras * valorHoraExtra);
    }
    else {
      salario = horasTrabajadas * valorHora;
    }
    // Salida
    print("Horas trabajadas: $horasTrabajadas");
    print("Horas extras trabajadas: $horasExtras");
    print("Su salario es: $salario");
  }
}