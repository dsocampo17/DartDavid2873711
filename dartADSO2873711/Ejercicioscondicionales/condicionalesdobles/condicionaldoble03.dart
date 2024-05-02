import 'dart:io';
void main(List<String> args){
//MARIA PAULA MELO SOLANO- EJE condicional doble 03
/*Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se
aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10% */
//Definicion variables
int cantidadCamisas;
  double precioCamisa, totalCompra, descuento;
  //Entrada
  print("Digite el precio de la camisa");
  precioCamisa = double.parse(stdin.readLineSync()!);
  print("Digite la cantidad de camisas");
  cantidadCamisas = int.parse(stdin.readLineSync()!);
  //Proceso
  if (cantidadCamisas >= 3) {
    descuento = precioCamisa * cantidadCamisas * 0.20;
  } else {
    descuento = precioCamisa * cantidadCamisas * 0.10;
  }
  totalCompra = (precioCamisa * cantidadCamisas) - descuento;
  
  //Salida
  print("El total a pagar por la compra de camisas es: $totalCompra y el descuento es de: $descuento");

}
