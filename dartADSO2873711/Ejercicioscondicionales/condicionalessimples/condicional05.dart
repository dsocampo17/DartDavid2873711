import 'dart:io';
void main(){
  //MARIA PAULA MELO SOLANO- EJE condicional simple  05
  /*5. Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000
si se compran menos de 5 llantas y de $70000 si se compran 5 o más. */
  //Definicion variables
  int cantidad;
  double precio, total;
  //Entrada
  print("Digite la cantidad de llantas");
  cantidad = int.parse(stdin.readLineSync()!);
  //Proceso
  precio = 80000; 
  if  (cantidad>=5){
    precio=70000;
  }
  total=precio*cantidad;
  //Salida
  print("para las $cantidad llantas debe pagar $total");
}