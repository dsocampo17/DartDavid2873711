import 'dart:io';
void main(List<String> args) {
//MARIA PAULA MELO SOLANO-EJE CONDICIONALES DOBLE05
/*Un cliente ordena cierta 
cantidad de brochas de cerda y rodillos; 
las brochas de cerda tienen un 20% de descuento y los rodillos un 15% de descuento. 
Los datos que se tienen por cada tipo de artículo son: la cantidad
pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un
programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como
para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el
usuario ingresa 2.
*/
//Declaración variables
int cantcerda, cantrodillos, tipoPaga;
double valoruntcerda, valoruntrodillos, preciototalcerda, preciototalrodillo, descuentobrochacerda, descuentobrocharodillos, totalrodillos, totalbrochascerda, precioTotal;

//Entrada
print("Digite la cantidad de brochas de cerda");
cantcerda= int.parse(stdin.readLineSync()!);
print("Digite la cantidad de brochas de rodillos");
cantrodillos=int.parse(stdin.readLineSync()!);
print("Digite el valor unitario de las brochas de cerda");
valoruntcerda=double.parse(stdin.readLineSync()!);
print("Digite el valor unitario de los rodillos");
valoruntrodillos=double.parse(stdin.readLineSync()!);
//PROCESO

preciototalcerda= cantcerda*valoruntcerda;
preciototalrodillo= cantrodillos*valoruntrodillos;

descuentobrocharodillos= preciototalrodillo*0.20;
descuentobrochacerda= preciototalrodillo*0.15;

totalrodillos= preciototalrodillo-descuentobrocharodillos;
totalbrochascerda= preciototalcerda-descuentobrochacerda;



print("Cual es el tipo de paga (1 o 2);");
tipoPaga=int.parse(stdin.readLineSync()!);

if (tipoPaga==1){
  precioTotal= (totalbrochascerda+totalrodillos)*0.07;
} else  {
  precioTotal=totalbrochascerda+totalbrochascerda;
}

//SALIDA
print ("el costo total de la orden es de: $precioTotal");

}