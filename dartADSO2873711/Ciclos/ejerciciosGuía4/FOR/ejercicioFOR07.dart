import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje FOR 07
  /* Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. 
  Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
  */
  //DEFINICIÓN
  double kilos, preciokilo;
  double totalPago=0, descuento=0, gananciasTienda=0;

  //PROCESO
  print("Ingrese el precio por kilo");
  preciokilo = double.parse(stdin.readLineSync()!);

  for(int i=0; i<15; i++) {
    print("******************************");
    print("Persona " +(i+1).toString());
    print("Ingrese la cantidad de kilos a comprar");
    kilos = double.parse(stdin.readLineSync()!);

    totalPago = preciokilo * kilos;

    if(kilos > 10) {
      descuento = totalPago * 0.15;
      totalPago = totalPago - descuento;
      print("EL CLIENTE TIENE UN DESCUENTO DEL 15%");
      print("El cliente pagará $totalPago pesos.");
    }
    else {
      descuento = 0;
      print("El total a pagar es: $totalPago");
    }
    
    gananciasTienda = gananciasTienda + (totalPago - descuento);
  }
  
  print("La ganancia total de la tienda es de: $gananciasTienda");
}