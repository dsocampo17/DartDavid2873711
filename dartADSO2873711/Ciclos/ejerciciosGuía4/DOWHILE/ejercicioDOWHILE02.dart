import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje DOWHILE 02
  /*
  Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el 
  cual introduzca un número entero positivo e invierta los dígitos del número. Mostrar el número invertido.
  */

  //Definicion de variables
  int numInicial; 
  int nuevoNum, modulo, division;
  print("Ingrese el número deseado a invertir");
  numInicial= int.parse(stdin.readLineSync()!);
  nuevoNum=numInicial;
  print("El número inicial es: $numInicial");
  stdout.write("El número invertido es:");
  do {
    modulo= nuevoNum%10;
    division= nuevoNum~/10;
    stdout.write(modulo);
    nuevoNum=division;
  } while(division != 0);
}