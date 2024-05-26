import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje While 07
  /* Encontrar el menor valor de un conjunto de n números dados. 
  */

  //DECLARACION 
  int contador = 0;            
  int cantNumeros;             
  double num;
  double numMenor = 9999;

  print ("Ingrese la cantidad de numeros:");
  cantNumeros = int.parse(stdin.readLineSync()!);    

  while ( contador < cantNumeros ) { 
    print ("Ingrese el numero ${contador+1}");
    num = double.parse(stdin.readLineSync()!);
    if ( num < numMenor) {
      numMenor = num;
    }
    else {
      numMenor = numMenor;
    }
    print("El numero menor es: $numMenor");     
  contador++;
  }
  print("*******************************************");
  print("El numero menor de los $cantNumeros numeros es: $numMenor");
}