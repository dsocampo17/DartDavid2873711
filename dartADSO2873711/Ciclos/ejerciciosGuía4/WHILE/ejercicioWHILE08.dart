import 'dart:io';

void main() {
  print("Ingrese el número de elementos:");
  int n = int.parse(stdin.readLineSync()!);

  // Solicitar el primer número
  print("Ingrese el primer número:");
  double mayor = double.parse(stdin.readLineSync()!);
  
  // Inicializar el contador en 1
  int contador = 1;

  // Bucle while para solicitar los números restantes y encontrar el mayor valor
  while (contador < n) {
    print("Ingrese el siguiente número:");
    double numero = double.parse(stdin.readLineSync()!);
    
    // Si el número ingresado es mayor que el valor actual de 'mayor', actualizar 'mayor'
    if (numero > mayor) {
      mayor = numero;
    }

    // Incrementar el contador
    contador++;
  }

  // Imprimir el mayor valor encontrado
  print("El mayor valor de los números ingresados es: $mayor");
}
