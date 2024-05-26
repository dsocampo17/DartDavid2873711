import 'dart:io';
void main(List<String> args) {
 // David Ocampo - Eje DOWHILE 07
  /* Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. 
  Por cada carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. 
  Cuando lea las 10 letras 'a' el programa terminará.
  */

  //DECLARACION VARIABLES 
  int contador = 0;           
  int cantiCaracteres = 10;   
  String? Vocal;
  int caracterA = 0;        

  do {
    print("Ingrese caracter # ${contador + 1}");
    Vocal = stdin.readLineSync();
    if ( Vocal != "a" ) {
      print("El caracter ingresado $Vocal No es 'a'");
      print("Ingrese nuevamente caracter:");
    }
    else {
      caracterA++;
      print("Van $caracterA caracter 'a'");
      contador++;
    }
  }
  while ( contador < cantiCaracteres );

}