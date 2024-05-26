import 'dart:io';

void main(List<String> args) {
  // David Ocampo - Eje DOWHILE 01
  /*
  En  un  supermercado  una  ama  de  casa  pone  en  su  carrito  los  artículos  que  va  tomando  de 
  los estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo que 
  cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado 
  y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás artículos, 
  hasta  que  decide  que  ya  tomo  todo  lo  que  necesitaba.  
  Ayúdale  a  esta  señora  a obtener el total de sus compras.
  */
  
  //Definicion de variables
  int contadorArticulo=0, cantArticulo, acumArticulos=0;
  String? articulo, opcion;
  double precio, totalcompra=0 , totalarticulo;
  
  //Entrada
  
  do{ 
 print("Ingrese el articulo a comprar: ");
 articulo= stdin.readLineSync();
 print("Ingrese la cantidad a comprar de $articulo");
 cantArticulo = int.parse(stdin.readLineSync()!);
 print("Ingrese el precio de $articulo");
 precio= double.parse(stdin.readLineSync()!);
 totalarticulo= cantArticulo*precio;
 print("el total en el articulo $articulo será $totalarticulo");
 totalcompra += totalarticulo;
 contadorArticulo++;
 acumArticulos += cantArticulo;
 print("La cantidad de $contadorArticulo de articulos");
 print("La cantidad de articulos en total es de: $acumArticulos");
 print("Desea ingresar otro articulo (Si) - (No)");
 opcion=stdin.readLineSync();
 print('*' * 50);
  
}while(opcion!.toUpperCase()!= "NO");
print("SU total de compra es: $totalcompra ");
print("Total de artículos: $contadorArticulo ");
print("La cantidad de articulos en total es de: $acumArticulos ");
}
