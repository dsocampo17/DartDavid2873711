import 'dart:io';
void main() {
  // David Ocampo - EJE Condicional Simple  02
  /*
  La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su
  terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas
  que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual
  se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de
  400 metros cuadrados se hace un descuento del 10%.
  */
  // Definicion variables
  double largo, ancho, precioMetro, precioTerreno;
  double areaTerreno;
  // Entrada
  print("Digite el largo del terreno");
  largo = double.parse(stdin.readLineSync()!);
  print("Digite el ancho del terreno");
  ancho = double.parse(stdin.readLineSync()!);
  print("Digite el precio por metro cuadrado");
  precioMetro = double.parse(stdin.readLineSync()!);
  // Proceso
  areaTerreno = largo * ancho;
  precioTerreno = areaTerreno * precioMetro;
  if (areaTerreno > 400) {
    precioTerreno = precioTerreno - (precioTerreno * 0.10);
  }
  // Salida
  print("El precio del terreno es: $precioTerreno");
}