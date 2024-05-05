import 'dart:io';

void main() {
  // David Ocampo - EJE Condicional Anidado 03
  /*
  En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependera del
  número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10% de descuento 
  sobre el total de la compra; si el número de computadoras es mayor o igual a cinco pero menos de diez se 
  le otorga un 20% de descuento; y si son 10 o más se les da un 40% de descuento. El precio de cada 
  computadora es de $1100000.
  */
  // Declaración de variables
  int numeroComputadoras;
  double precioComputadora = 1100000;
  double descuentoTotal,totalCompra,totalPagar;
  // Entrada de datos
  print("Ingrese el número de computadoras a comprar:");
  numeroComputadoras = int.parse(stdin.readLineSync()!);
  // Proceso
  descuentoTotal = 0;
  if (numeroComputadoras < 5) {
    descuentoTotal = precioComputadora * numeroComputadoras * 0.10;

  } else if (numeroComputadoras >= 5 && numeroComputadoras < 10) {
    descuentoTotal = precioComputadora * numeroComputadoras * 0.20;

  } else if (numeroComputadoras >= 10) {
    descuentoTotal = precioComputadora * numeroComputadoras * 0.4;
  }
  totalCompra = precioComputadora * numeroComputadoras;
  totalPagar = totalCompra - descuentoTotal;
  // Salida 
  print("Total a pagar: $totalPagar");
}
