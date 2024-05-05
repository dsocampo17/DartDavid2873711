import 'dart:io';
void main() {
  // David Ocampo - EJE Condicional Simple  04
  /*
  Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
  descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
  es 2 el descuento en del 20% (solo existen dos claves). 
  */
  // Definicion vafriables
  String? nombre;
  int clave;
  double precio,descuento, precioFinal;
  // Entrada
  print("Digite el nombre del articulo");
  nombre = stdin.readLineSync();
  print("Digite la clave del articulo solo 1 o 2");
  clave = int.parse(stdin.readLineSync()!);
  print("Digite el precio del articulo");
  precio = double.parse(stdin.readLineSync()!);
  // Proceso
  descuento = 0;
  if (clave == 1) {
    descuento = precio * 0.1;
  } 
  if (clave==2){
    descuento=precio*0.2;
  }
  precioFinal=precio-descuento;
  // Salida
  print("El nombre del articulo es: $nombre");
  print("El precio con descuento es: $precioFinal");

}