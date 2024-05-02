import 'dart:io';
import 'dart:math';
void main(){
  //MARIA PAULA MELO SOLANO- EJE condicional simple  06
  /*6. En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento
dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el
descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%.
Obtener cuánto dinero se le descuenta. */
  //Definicion variables
  int numeroAzar;
  double precioriginal, descuento, precioTotal;
  //Entrada
  print("Cuando es el precio total de la compra");
  precioriginal= double.parse(stdin.readLineSync()!);
  numeroAzar= Random().nextInt(100);
  print("El número al azar es: $numeroAzar");
  //proceso
  descuento=0;
  if 
  (numeroAzar<74){
    descuento= precioriginal*0.15;
  }
  if(numeroAzar>=74){
    descuento= precioriginal*0.2;
  }
  precioTotal= precioriginal-descuento;
  //Salida
  print("El descuento es: $descuento");
}