import 'dart:io';
import 'dart:math';
void main() {
  // David Ocampo - EJE Condicional Multiple 04
  /*
  Calcular el valor de f(x) según la expresión
  
        | x ^ 2     | Si x mod 4 = 0
  f(x)  | x / 6     | Si x mod 4 = 1
        | Raiz(x)   | Si x mod 4 = 2
        |X ^ 3 + 5  | Si x mod 4 = 3 */
  // Deficion vbles
  int x, num;
  double resultado;
  //Entrada
  print("Ingrese el valor de x:");
  x = int.parse(stdin.readLineSync()!);
  //Proceso
  resultado=0;
  switch (x % 4) {
    case 0:
      resultado =  pow(x, 2).toDouble();
      break;
    case 1:
      resultado = x / 6;
      break;
    case 2:
      resultado = sqrt(x);
      break;
    case 3:
      resultado = pow(x, (3+5)).toDouble();
      break;
    default:
      print('Error: El valor de x debe ser un múltiplo de 4.');
  }

  // Salida
  print('El valor de la variable x es: $x');
  print('El resultado es: $resultado');
}