import 'dart:io';
void main(List<String> args) {
  List<List<int>> matriz = [];
  int cantFilas = 3, cantColumnas = 4;
  int numero;
  for (int i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el elemento posición $i,$j");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    print(fila);
    matriz.add(fila);
  }
  print('*' * 30);
  print(matriz);

  // Imprimir todos los elementos de la lista
  for (int fila = 0; )
}