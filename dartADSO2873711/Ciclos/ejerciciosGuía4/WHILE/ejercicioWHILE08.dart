import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje While 08
  /* Encontrar el mayor valor de un conjunto de n números dados.
  */

  //DECLARACION VARIABLES
  int contador = 0;             
  int cantNumeros;             
  double num;
  double numMayor = 0;

  print ("Ingrese la cantidad de numeros: ");
  cantNumeros = int.parse(stdin.readLineSync()!);    

  while ( contador < cantNumeros ) { 
    print ("Ingrese el numero ${contador+1}");
    num = double.parse(stdin.readLineSync()!);
    if ( num > numMayor) {
      numMayor = num;
    }
    else {
      numMayor = numMayor;
    }     
    print("Hasta el momento el numero mayor es: $numMayor");     
  contador++;
  }
  print("********************************************************");
  print("El numero mayor de los $cantNumeros numeros ingresados es: $numMayor");
}