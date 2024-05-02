import 'dart:io';
void main() {
//MARIA PAULA MELO SOLANO-EJE CONDICIONALES ANIDADOS04
/*En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha
promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de
cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona
tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la
compra
 */
  // Declaración 
  int cantidadLlantas;
  double precioUnidad, precioTotal;

  // Entrada 
  print("Ingrese la cantidad de llantas que desea comprar: ");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  // Proceso 
  if (cantidadLlantas < 5) {
    precioUnidad = 90000;
  } else if (cantidadLlantas <= 10) {
    precioUnidad = 80000;
  } else {
    precioUnidad = 70000;
  }

  
  precioTotal = cantidadLlantas * precioUnidad;

  // Salida de resultados
  print("El precio por cada llanta es de: $precioUnidad");
  print("El precio total de la compra es de: $precioTotal");
}


