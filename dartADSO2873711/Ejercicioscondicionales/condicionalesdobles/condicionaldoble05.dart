import 'dart:io';
void main(List<String> args) {
  // David Ocampo - EJE Condicional Doble 05
  /*
  Un cliente ordena cierta 
  cantidad de brochas de cerda y rodillos; 
  las brochas de cerda tienen un 20% de descuento y los rodillos un 15% de descuento. 
  Los datos que se tienen por cada tipo de artículo son: la cantidad
  pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un
  programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como
  para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el
  usuario ingresa 2.
  */
  // Declaración variables
  int cantCerda, cantRodillos, tipoPago;
  double valorUntCerda, valorUntRodillos, precioTotalCerda, precioTotalRodillo, descuentoBrochaCerda, descuentoBrochaRodillos, totalRodillos, totalBrochascerda, precioTotal;
  
  // Entrada
  print("Digite la cantidad de brochas de cerda");
  cantCerda= int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de brochas de rodillos");
  cantRodillos=int.parse(stdin.readLineSync()!);
  print("Digite el valor unitario de las brochas de cerda");
  valorUntCerda=double.parse(stdin.readLineSync()!);
  print("Digite el valor unitario de los rodillos");
  valorUntRodillos=double.parse(stdin.readLineSync()!);
  // PROCESO
  precioTotalCerda= cantCerda*valorUntCerda;
  precioTotalRodillo= cantRodillos*valorUntRodillos;
  descuentoBrochaRodillos= precioTotalRodillo*0.20;
  descuentoBrochaCerda= precioTotalRodillo*0.15;
  totalRodillos= precioTotalRodillo-descuentoBrochaRodillos;
  totalBrochascerda= precioTotalCerda-descuentoBrochaCerda;
  
  print("Cual es el tipo de paga (1 o 2);");
  tipoPago=int.parse(stdin.readLineSync()!);
  
  if (tipoPago==1){
    precioTotal= (totalBrochascerda+totalRodillos)*0.07;
  } else  {
    precioTotal=totalBrochascerda+totalBrochascerda;
  }
  // SALIDA
  print ("el costo total de la orden es de: $precioTotal");
}