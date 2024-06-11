import 'dart:io';

void main(List<String> args) {
  // David Ocampo - Eje Matriz 04
  /*La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos de primaria. 
  El juego se llama "cuadro mágico", un cuadro mágico es aquel en que la suma de cada fila, 
  la suma de cada columna y la suma de las diagonales es exactamente igual. El cuadro mágico es de dos dimensiones.
  Desarrollar un programa que pida al usuario las dimensiones deseadas para el cuadro mágico (un arreglo de dos dimensiones) 
  en forma de cuadro y luego le pida los datos para llenar el arreglo. Después el programa debe calcular la suma de cada fila, 
  de cada columna y de cada diagonal del cuadro, si todas las sumas son iguales entonces le deberás de indicar  
  por medio de un mensaje "Felicidades creaste un cuadro mágico", de lo contrario le deberás de decir  
  el siguiente mensaje: "Modifica los números en el cuadro para que lo hagas mágico".
  */

  print('Ingrese las dimensiones deseadas para el cuadro mágico:');
  int dimension = int.parse(stdin.readLineSync()!);

  List<List<int>> cuadroMagico =
      List.generate(dimension, (_) => List.filled(dimension, 0));

  print('Ingrese los números para llenar el cuadro mágico:');
  for (int i = 0; i < dimension; i++) {
    for (int j = 0; j < dimension; j++) {
      print("Ingrese el número en la posición [$i, $j]:");
      cuadroMagico[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  int sumaFila = cuadroMagico[0].reduce((value, element) => value + element);

  int sumaColumna = 0;
  for (int i = 0; i < dimension; i++) {
    sumaColumna += cuadroMagico[i][0];
  }

  int sumaDiagonalPrincipal = 0;
  for (int i = 0; i < dimension; i++) {
    sumaDiagonalPrincipal += cuadroMagico[i][i];
  }

  int sumaDiagonalSecundaria = 0;
  for (int i = 0; i < dimension; i++) {
    sumaDiagonalSecundaria += cuadroMagico[i][dimension - 1 - i];
  }

  if (sumaFila == sumaColumna &&
      sumaFila == sumaDiagonalPrincipal &&
      sumaFila == sumaDiagonalSecundaria) {
    print('¡Felicidades! Has creado un cuadro mágico.');
  } else {
    print('Modifica los números en el cuadro para que sea mágico.');
  }
}