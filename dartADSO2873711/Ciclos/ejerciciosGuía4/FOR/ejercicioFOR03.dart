import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje FOR 03
  /* Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
  */
  
  // Definicion 
  double num;
  double numerosPositivo=0, numerosNegativo=0, cantidadN=20, numerosNeutro=0;

  // PROCESOS
  for(int i=0; i<cantidadN; i++) {
    print("Ingrese un número");
    print("Numero" +(i+1).toString());
    num = double.parse(stdin.readLineSync()!);

    if (num > 0) {
      numerosPositivo = numerosPositivo + 1;
    }

    else if (num < 0) {
      numerosNegativo = numerosNegativo + 1;
    }

    else {
      numerosNeutro = numerosNeutro + 1;
    }
  }

  // SALIDA
  print("Cantidad de números positivos es: $numerosPositivo");
  print("Cantidad de números negativos es: $numerosNegativo");
  print("Cantidad de números neutros es: $numerosNeutro");
}