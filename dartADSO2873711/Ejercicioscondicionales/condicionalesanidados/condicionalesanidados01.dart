import 'dart:io';

void main() {
  // David Ocampo - EJE Condicional Anidado 01
  /* Dado tres números calcular el mayor 
  */
  // Declarar variables 
  int num1, num2, num3, mayor;

  print("Ingrese el primer número:");
 num1 = int.parse(stdin.readLineSync()!);


  print("Ingrese el segundo número:");
 num2 = int.parse(stdin.readLineSync()!);

  print("Ingrese el tercer número:");
 num3 = int.parse(stdin.readLineSync()!);

 // PROCESO
  mayor = 0;
  if (num1 > num2) {
    mayor = num1;
    if (mayor > num3) {
      print("El número mayor es: $num1");
    } else {
      print("El número mayor es: $num3");
    }
  } else if (num2 > num1) {
    mayor = num2;
    if (mayor > num3) {
      print("El número mayor es: $num2");
    } else {
      print("El número mayor es: $num3");
    }
  } else {
    print("Los tres números son iguales: $num1, $num2 y $num3");
  }
}



