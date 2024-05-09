import 'dart:io';

void main (List<String> args) {
  /*Pedir al usuario n notas ingresadas
  por el usuario. Si el promedio es mayor a 3, es decir que el estudiante aprobó el
  trimestre, sino que indique que reprobó.
  */

  int notas, numNotas;
  double suma = 0, promedio;
  print("Digite la cantidad de notas");
  numNotas = int.parse(stdin.readLineSync()!);
  for(int n=0; n<numNotas; n++) {
  print("Digite el resultado de notas"+(n+1).toString());
  notas=int.parse(stdin.readLineSync()!);
  suma=suma+notas;
}
  promedio=suma/numNotas;
  print("EL promedio de notas es de: $promedio");
  if(promedio >=3){
  print("Aprobado");
}
  else {
  print("Desaprobado");
}
}
