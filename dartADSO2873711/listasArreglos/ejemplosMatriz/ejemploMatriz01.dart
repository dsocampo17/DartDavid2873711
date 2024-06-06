import 'dart:io';

void main(List<String> args) {
  // Definicion Matriz
  List<List<int>> matriz1;

  // Definicion e Inicialización Matriz vacía
  List<List<int>> matriz2 = [];
  
  // Definir e inicializar con valores la Matriz
  List<List<double>> matriz3 = [
    [3, 5, 7, 9],
    [2, 4, 6, 8],
    [1, 8,9 ,12],
  ];
  // Acceder a los elementos
  print(matriz3);
  print(matriz3[1][2]);//Imprime 6
  print(matriz3[2][3]);//Imprime 12
  print(matriz3[0][2]);//Imprime 7

  // Modificar los elementos de la matriz
  matriz3[2][1] = 7;
  matriz3[2][3] = 11;
  print(matriz3[2][1]);
  print(matriz3[2][3]);
  print(matriz3);

  // Tamaño Matriz
  print("Cantidad de filas ${matriz3.length}");
  print("Cantidad de columnas ${matriz3[0].length}");

  // Imprimir todos los elementos de la lista
  for(var i=0; i < matriz3.length; i++){ // Recorre las filas
  stdout.write("|");
    for (var j = 0; j <matriz3[0].length; j++) { // Recorre las columnas
      stdout.write("${matriz3[i][j]}|");
    }
    stdout.write("\n");
  }
}