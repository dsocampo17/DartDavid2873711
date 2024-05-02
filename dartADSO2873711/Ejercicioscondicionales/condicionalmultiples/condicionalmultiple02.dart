import 'dart:io';

void main() {
  //MARIA PAULA MELO SOLANO- EJE condicional multiple 02
  /*Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución : 
Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea 
Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea 
Tipo 3 : Fumigación contra gusanos, $80000 por hectárea. 
Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea. 
* Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
 • Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre 
 la cantidad que sobrepase el $1000000.
  • Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero. 
Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de
 hectáreas a fumigar.  
Se debe imprimir el nombre del granjero y la cuenta total. */
  // Se declaran las variables
  String? nombreGranjero;
  int tipoFumigacion;
  double hectareas, costoTotal, descuentoSuperficie, descuentoTotal, totalPagar;

  // Entrada
  print("Ingrese el nombre del granjero:");
  nombreGranjero = stdin.readLineSync();
  print("Ingrese el tipo de fumigación deseada (1-4):");
  tipoFumigacion = int.parse(stdin.readLineSync()!);
  print("Ingrese el número de hectáreas a fumigar:");
  hectareas = double.parse(stdin.readLineSync()!);

  // Proceso
  switch (tipoFumigacion) {
    case 1:
      costoTotal = hectareas * 50000;
      break;
    case 2:
      costoTotal = hectareas * 70000;
      break;
    case 3:
      costoTotal = hectareas * 80000;
      break;
    case 4:
      costoTotal = hectareas * 190000;
      break;
    default:
      print("Tipo de fumigación no válido.");
      return;
  }

  // Se calcula el descuento por superficie si aplica
  if (hectareas > 100) {
    descuentoSuperficie = costoTotal * 0.05;
    costoTotal -= descuentoSuperficie;
  }

  // Se calcula el descuento total si aplica
  if (costoTotal > 1000000) {
    descuentoTotal = (costoTotal - 1000000) * 0.1;
    costoTotal -= descuentoTotal;
  }

  // SALIDA

  totalPagar = costoTotal;

  
  
  print("Nombre del granjero: $nombreGranjero");
  print("Total a pagar: \$$totalPagar");
}