import 'dart:io';
void main() {
  // David Ocampo - EJE Condicional Simple  03
  /*
  El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para
  sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio
  unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al
  precio normal.
  */
  // Definicion variables
  String? modelo;
  double precioUnitario, precioTotal;
  int cantidad;
  // Entrada
  print("Digite el modelo del traje");
  modelo = stdin.readLineSync();
  print("Digite el precio unitario del traje");
  precioUnitario = double.parse(stdin.readLineSync()!);
  print("Digite la cantidad de trajes");
  cantidad = int.parse(stdin.readLineSync()!);
  // Proceso
  precioTotal = precioUnitario * cantidad;
  if (cantidad >= 3) {
    precioTotal = precioTotal - (precioTotal * 0.17);
  }
  // Salida
  print("El modelo del traje es: $modelo");
  print("El precio total es: $precioTotal");
}