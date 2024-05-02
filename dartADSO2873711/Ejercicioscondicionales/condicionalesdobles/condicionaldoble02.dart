import 'dart:io';
void main(List<String> args){
//MARIA PAULA MELO SOLANO- EJE condicional doble 02
/*Un obrero necesita calcular su salario semanal, el cual se obtiene de la siguiente manera:
Si trabaja 40 horas o menos se le paga $16 por hora
Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
extra. */
//Definicion variables
double  horasTrabajadas,salario,horasExtras;
print("Digite la cantidad de horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  //Proceso
  if (horasTrabajadas <= 40) {
    salario = horasTrabajadas * 16;
  } else {
    horasExtras= (horasTrabajadas-40);
    salario = (40 * 16) + ((horasExtras) * 20); //De las primeras 40 horas se pagan $16 pesos
    
  }
  //Salida
  print("El salario semanal es: $salario");
}