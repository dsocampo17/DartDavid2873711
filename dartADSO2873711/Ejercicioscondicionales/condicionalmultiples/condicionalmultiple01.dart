import 'dart:io';
void main(){
//MARIA PAULA MELO SOLANO- EJE condicional multiple 01
/*La empresa comercializadora Solva vende escobas, recogedores y aromatizantes, clasifica a sus
clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:
Si el cliente es de la categoría 1 se le descuenta el 5%
Si el cliente es de la categoría 2 se le descuenta el 8%
Si el cliente de de la categoría 3 se le descuenta el 12%
Si el cliente es de la categoría 4 se le descuenta el 15%
Cuando el cliente realiza una compra se generan los siguientes datos:
Nombre del cliente
Tipo de cliente
Cantidad comprada de escobas, recogedores y aromatizantes.
Los precios de estos elementos son.
• Escobas. 3000.
• Recogedores. 2000
• Aromatizantes. 1000
Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:
Nombre del cliente
Subtotal a pagar
Descuento
Total a pagar. */

//DECLARACIÓN VARIABLES
String? nombreCliente;
int tipoCliente;
int cantidadEscobas, cantRecogedores, cantAromat;
int precioEscobas=3000, precioRecogedores=1000, precioAromat=1000;
double descuento, totalCompra, Subtotal;

//ENTRADA
print("cual es su nombre");
nombreCliente=stdin.readLineSync();
print("cual es su categoria");
tipoCliente= int.parse(stdin.readLineSync()!);
print("Cual es la cantidad de escobas, recogedores y aromatizantes");
cantidadEscobas= int.parse(stdin.readLineSync()!);
cantRecogedores= int.parse(stdin.readLineSync()!);
cantAromat= int.parse(stdin.readLineSync()!);
//PROCESO
 Subtotal= (cantidadEscobas.toDouble()*precioEscobas)+
(cantRecogedores*precioRecogedores)+
(cantAromat*precioAromat);
switch (tipoCliente)
{
  case 1:
  descuento= Subtotal*0.05;
  break;
  case 2:
  descuento= Subtotal*0.08;
  break;
  case 3:
  descuento= Subtotal*0.12;
  break;
  case 4:
  descuento= Subtotal*0.15;
  break;
  default:
  print("La categoria es incorrecta");
  descuento=0;
  break;

}
totalCompra=Subtotal-descuento;

//SALIDA
print("Su nombre es: $nombreCliente");
print("subtotal a pagar: $Subtotal");
print("El descuento es: $descuento");
print("El total a pagar es: $totalCompra");
}