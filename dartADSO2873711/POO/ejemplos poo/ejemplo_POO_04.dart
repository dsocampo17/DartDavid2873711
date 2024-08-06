import 'dart:io';

import 'Vehiculo.dart';

void main(List<String>args) {
  Vehiculo vehi_obje1= Vehiculo("azul", 40,2);
  vehi_obje1.avanzar(25);
  vehi_obje1.avanzar(25);
  vehi_obje1.avanzar(125);
  vehi_obje1.detenerse();

  //Listas o Arrays de objetos
  List<String>nombreVehiculos= [];
  for (var i=0; i <5; i++) {
    print("Ingrese el nombre el vehiculo");
    nombreVehiculos.add(stdin.readLineSync()!);
  }
  print(nombreVehiculos);           
                                                                                                                                                                                     
  List<Vehiculo> ListasVehiculos= []; //Se crea una lista de objetos vehiculos
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  for (var i = 0; i < 5; i++) {
    print("Ingrese el color del vehiculo ${i + 1}");
    colorUsuario =stdin.readLineSync()!;
    print("Ingrese la velocidad del vehiculo ${i+1}");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehiculo ${i+1}");
    tamanioUsuario =double.parse(stdin.readLineSync()!);
    // se c rea el objeto de forma dinámica con los datos que ingrese el usuario
    Vehiculo vehiculo_obj =  Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
    print("*" *50);
    print("Vehiculo: ${i+1}");
    vehiculo_obj.avanzar(30);
    vehiculo_obj.avanzar(20);
    vehiculo_obj.detenerse();

  }

}