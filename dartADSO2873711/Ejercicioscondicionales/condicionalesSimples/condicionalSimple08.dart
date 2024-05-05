import 'dart:io';
void main(){
  //David Ocampo - EJE Condicional Simple  08
  /*Dada la duración en minutos de una llamada calcular el costo, considerando:
  * Hasta tres minutos el costo es 600
  * Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros. 
  */
  //Definicion variables
  double duracion, costoLlamada;
  double minutosAdicionales;
  //Entrada
  print("Digite la duracion de la llamada ");
  duracion = double.parse(stdin.readLineSync()!);
  //Proceso
  costoLlamada = 0;
  if (duracion <= 3) {
    costoLlamada = 600;
  } 
  if(duracion > 3){
    minutosAdicionales = duracion - 3;
    costoLlamada = 600 + minutosAdicionales * 150;

  }
  //Salida
  print("El costo de la llamada es: $costoLlamada");
}