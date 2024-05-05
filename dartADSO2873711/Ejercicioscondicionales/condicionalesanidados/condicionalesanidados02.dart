import 'dart:io';

void main() {
  // David Ocampo - EJE Condicional Anidado 02
  /*
  Dado el monto de una compra calcular el descuento considerado:
  Descuento es 20% si el monto es mayor a 20000 pesos. Descuento es 10% si el monto es mayor a 10000 pesos
  y menor o igual a 20000 pesos. No hay descuento si el monto es menor o igual a 10000 pesos.
  */
  // Declaración de variables
  double montoCompra, descuento, montoFinal;
  // Entrada 
  print("Ingrese el monto de la compra:");
  montoCompra = double.parse(stdin.readLineSync()!);
  // Proceso
  if (montoCompra > 20000) {
    descuento = montoCompra * 0.20;
    montoFinal = montoCompra - descuento;
  } else if (montoCompra > 10000 && montoCompra <= 20000) {
    descuento = montoCompra * 0.10;
    montoFinal = montoCompra - descuento;
  } else {
    descuento = 0;
    montoFinal = montoCompra;
  }
  // SALIDA
  print("Monto final: $montoFinal");
  print("Descuento aplicado: $descuento");
}


 

  
