import 'dart:io';
void main(){
  //MARIA PAULA MELO SOLANO- EJE condicional simple  08
/*8. Dada la duración en minutos de una llamada calcular el costo, considerando:
* Hasta tres minutos el costo es 600
* Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros. */
  //Definicion variables
  double duracion, costollamada;
  double minutosAdicionales;
  //Entrada
  print("Digite la duracion de la llamada ");
  duracion = double.parse(stdin.readLineSync()!);
  //Proceso
  costollamada = 0;
  if (duracion <= 3) {
    costollamada = 600;
  } 
  if(duracion > 3){
    minutosAdicionales = duracion - 3;
    costollamada = 600 + minutosAdicionales * 150;

  }
    
  
  //Salida
  print("El costo de la llamada es: $costollamada");
}