import 'dart:io';

void main() {
  //MARIA PAULA MELO SOLANO- EJE condicional anidada 07
  /*Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los
reste y si no que los sume.
 */

  
  // Declarar variables
  int num1, num2;
  int resultado;

  // Solicitar al usuario que ingrese el primer número
  print("Ingrese el primer número:");
  num1 = int.parse(stdin.readLineSync()!);

  // Solicitar al usuario que ingrese el segundo número
  print("Ingrese el segundo número:");
  num2 = int.parse(stdin.readLineSync()!);

  // PROCESO
  if (num1 == num2) {
    resultado = num1 * num2;
    print("Los números son iguales. El resultado de la multiplicación es: $resultado");

  } else if (num1 > num2) {
    resultado = num1 - num2;
    print("El primer número es mayor que el segundo. El resultado de la resta es: $resultado");

  } else {
    
    resultado = num1 + num2;
    print("El segundo número es mayor o los números no son iguales. El resultado de la suma es: $resultado");
  }
}
