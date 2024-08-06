import 'dart:io';
import 'empleado.dart';

void main() {
  List<Empleado> empleados = [];
  String respuesta;
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  while (true) {
    print("¿Desea agregar un empleado? (si/no)");
    respuesta = stdin.readLineSync()!;
    if (respuesta != 'si') break;

    print("Ingrese el nombre del empleado:");
    nombre = stdin.readLineSync()!;

    print("Ingrese la edad del empleado:");
    edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el salario del empleado:");
    salario = double.parse(stdin.readLineSync()!);

    print("Ingrese el puesto del empleado:");
    puesto = stdin.readLineSync()!;

    print("Ingrese tipo de contrato (Indefinido/Temporal/Contratista):");
    tipoContrato = stdin.readLineSync()!;

    
    empleados.add(Empleado(nombre, edad, salario, puesto, tipoContrato));
  }

  print("*" * 50);
  
  for (Empleado empleado in empleados) {
    empleado.aumentarSalario(10);
    empleado.cumplirAnios();
    
    print("Ingrese el nuevo puesto para ${empleado.nombre}:");
    String nuevoPuesto = stdin.readLineSync()!;
    empleado.cambiarPuesto(nuevoPuesto);
    
    double bonificacion = empleado.calcularBonificacion();
    print("Bonificación calculada: $bonificacion");
    empleado.mostrarInformacion();
}
}