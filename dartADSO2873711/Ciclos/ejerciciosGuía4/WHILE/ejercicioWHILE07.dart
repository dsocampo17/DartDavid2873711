import 'dart:io';

void main() {
  print("Ingrese el número de elementos:");
  int n = int.parse(stdin.readLineSync()!);

  // Solicitar el primer número
  print("Ingrese el primer número:");
  double menor = double.parse(stdin.readLineSync()!);
  
  // Contador para recorrer los números restantes
  int contador = 1;

  // Bucle while para solicitar los números restantes y encontrar el menor valor
  while (contador < n) {
    print("Ingrese el siguiente número:");
    double numero = double.parse(stdin.readLineSync()!);
    
    // Si el número ingresado es menor que el valor actual de 'menor', actualizar 'menor'
    if (numero < menor) {
      menor = numero;
    }

    contador++;
  }

  // Imprimir el menor valor encontrado
  print("El menor valor de los números ingresados es: $menor");
}
