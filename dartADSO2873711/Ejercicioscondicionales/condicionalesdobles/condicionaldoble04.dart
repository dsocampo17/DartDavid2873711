import 'dart:io';
void main(List<String> args){
  // David Ocampo - EJE Condicional Doble 04
  /*
  Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los "ingresos del
  comprador" son mayores o iguales a $800000 
  la cuota inicial será del 15% del costo de la casa y el resto se
  distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000
  la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en 
  pagos mensuales a pagar en 7 años.
  La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada
  pago mensual ingresando el valor de la casa.
  */
  // Declaración variables 
 double ingresosComprador, valorCasa, cuotaInicial, pagoMensual;
  // Entrada
  print("Digite los ingresos del comprador");
  ingresosComprador = double.parse(stdin.readLineSync()!);
  print("Digite el valor de la casa");
  valorCasa = double.parse(stdin.readLineSync()!);
  // Proceso
  if (ingresosComprador >= 800000) {
    cuotaInicial = valorCasa * 0.15;
    pagoMensual = (valorCasa - cuotaInicial)/120;
  } else {
    cuotaInicial = valorCasa * 0.30;
    pagoMensual = (valorCasa - cuotaInicial)/84;
  }
  // Salida
  print("El valor de la cuota inicial es: $cuotaInicial");
  print("El valor de cada pago mensual es: $pagoMensual");

}
