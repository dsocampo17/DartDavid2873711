import 'dart:io';
void main (List<String> args) {
  /* David Ocampo - Eje While 01
  Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana.
  Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de
  sus ventas. El gerente de su compañía desea saber cuanto dinero obtendrá en la semana cada
  vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su
  sueldo base y sus comisiones.
  */
  // Definición Variables
  int salarioBase, cantidad = 3, acumulador, cantVendedores, contador=0;
  double ventas, salariototal, comisiones;
  
  print("Ingrese la cantidad de empleados contratados");
  cantVendedores = int.parse(stdin.readLineSync()!);
  while (contador < cantVendedores) {
  print("Ingrese el salario base");
  salarioBase=int.parse(stdin.readLineSync()!);
  for (int i=0; i<cantidad;i++) {
    print("Ingrese el valor de la venta " + (i+1).toString());
    ventas = double.parse(stdin.readLineSync()!);
    salarioBase += cantidad;
    contador++;
  }

  comisiones = salarioBase * 0.10;
  print("El vendedor tiene un total de $comisiones comisión");
  salariototal = salarioBase + comisiones;
  print("El vendedor obtuvo un salario semanal de $salariototal ");
}
}
