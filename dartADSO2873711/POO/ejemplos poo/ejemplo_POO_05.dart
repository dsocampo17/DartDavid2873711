import 'dart:io';

import 'Vehiculo.dart';

void main(List<String>arg) {
  int cantIteraciones= 5;
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;

  List<Vehiculo> ListasVehiculos =[];
   for (var i = 0; i < 5; i++) {
    print("*" *50);
    print("Ingrese el color del vehiculo ${i + 1}");
    colorUsuario =stdin.readLineSync()!;
    print("Ingrese la velocidad del vehiculo ${i+1}");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehiculo ${i+1}");
    tamanioUsuario =double.parse(stdin.readLineSync()!);
    print("*"*50);
    //se instancia la clase vehiculo y se crea el objeto con los valores del usuario
     Vehiculo vehiculo_obj =  Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
     //se añade el vehiculo a la lsiat
     ListasVehiculos.add(vehiculo_obj);
}
//ciclo para recorrer elemento(objetos) de la lista y llamar los métodos
for (var i = 0; i < cantIteraciones; i++) {
  print("*" * 50);
  print("* vehiculo ${i+1} *");
  ListasVehiculos[i].avanzar(20);
  ListasVehiculos[i].avanzar(80);
  ListasVehiculos[i].avanzar(100);
  ListasVehiculos[i].detenerse();
print("*" *50);
}
}