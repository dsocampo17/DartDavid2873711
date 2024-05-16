import 'dart:io';

void main() {
  
  /*El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad
  de México, cuantos entran con calcomanía de cada color. Conociendo el último dígito de la placa de
  cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:

  DÍGITO | COLOR
  1 o 2  | amarilla
  3 o 4  | rosada
  5 o 6  | roja
  7 o 8  |verde
  9 o 0  | azul
  */

  //DEFINICIÓN
  int cantidadAutos;
  int  contador=0, calcAmarilla=0, calcRosa=0, calcRoja=0, calcVerde=0, calcAzul=0;
  int placa;

  //PROCESOS
  print("Escriba la cantidad de autos que entraro a la ciudad");
  cantidadAutos = int.parse(stdin.readLineSync()!);

  while (contador < cantidadAutos) {
    print("Digite el último número en la placa del carro ");
    placa = int.parse(stdin.readLineSync()!);
    contador++;

    if (placa == 1 || placa == 2 ) {
      calcAmarilla++;
    }

    else if (placa == 3 || placa == 4) {
      calcRosa++;
    }

    else if (placa == 5 || placa == 6) {
      calcRoja++;
    }

    else if (placa == 7 || placa == 8) {
      calcVerde++;
    }
    
    else if (placa == 9 || placa == 0) {
      calcAzul++;
    }

    else {
      print("la placa es incorrecta");
    }
  }

  print("Entraron $calcAmarilla carros con calcomanía amarilla");
  print("Entraron $calcRosa carros con calcomanía rosada");
  print("Entraron $calcRoja carros con calcomanía roja");
  print("Entraron $calcVerde carros con calcomanía verde");
  print("Entraron $calcAzul carros con calcomanía azul");
}