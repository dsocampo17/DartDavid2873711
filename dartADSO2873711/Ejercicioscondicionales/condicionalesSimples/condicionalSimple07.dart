import 'dart:io';
void main() {
  // David Ocampo - EJE Condicional Simple  07
  /*
  Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar
  clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50
  000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar
  será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente. 
  */
  // Definicion variables
  double monto, cuota;
  // Entrada
  print("Digite el monto de la fianza");
  monto = double.parse(stdin.readLineSync()!);
  // Proceso
  if (monto < 50000) {
    cuota = monto * 0.03;
  } else {
    cuota = monto * 0.02;
  }
  // Salida
  print("La cuota a pagar es: $cuota");
}