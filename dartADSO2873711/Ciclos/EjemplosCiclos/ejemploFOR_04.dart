import 'dart:io';
void main (List<String> args) {
  /*Desarrollar un algoritmo tal que,
  dado como datos 10 numeros enteros,
  obtenga la suma de los 10 números
  enteros. Se mostrará la suma de dichos
  números.
  */
  int num;
  int suma = 0; // Vble tipo ACUMULADOR
  for (int i = 0; i < 10; i++) {
  print("Digite el número");
  num = int.parse(stdin.readLineSync()!);
  // Se va guardando la suma de números
  suma = suma + num; // suma += num;
  }
  print("La suma es : $suma");
}