import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje Matriz 01
  /*Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números
  almacenados en la matriz*/
  List<List<double>> matriz=[];
  double  suma=0;
  int cantFilas=5, cantColumnas=6;

for (int i = 0; i < cantFilas; i++) {
  List<double> fila=[];
  for (int j = 0; j < cantColumnas; j++) {
    print("Ingrese el número $i,$j");
    fila.add(double.parse(stdin.readLineSync()!));
  }
  matriz.add(fila);
}
//ciclo para recorrer y generar la suma 
for (int i = 0; i < matriz.length; i++) {
  for (int j = 0; j < matriz[0].length; j++) {
    suma+=matriz[i][j];
  }
}
print(matriz);
print("La suma de los elementos de la matriz es: $suma");
}