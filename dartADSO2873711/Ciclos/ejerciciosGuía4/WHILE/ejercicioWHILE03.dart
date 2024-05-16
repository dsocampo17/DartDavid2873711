import 'dart:io';

void main() {
  /* Determinar cuantos hombres y cuantas mujeres se encuentran en un grupo de n personas,
  suponiendo que los datos son extraídos alumno por alumno.*/

  //DEFINICIÓN 
  int cantidadPersonas;
  int contador=0, hombres=0, mujeres=0;
  String? genero;

  //PROCESOS
  print("Escriba cuantas personas se van a evaluar");
  cantidadPersonas = int.parse(stdin.readLineSync()!);

  while (contador < cantidadPersonas) {
    print("Escriba (H) en caso de ser hombre o (M) en caso mujer");
    genero = stdin.readLineSync();
    contador++;

    if (genero == "H".toUpperCase()) {
      hombres = hombres + 1;
    }

    else if (genero == "M".toUpperCase()) {
      mujeres = mujeres + 1;
    }

    else {
      print("Género Incorrecto");
    }
  }

  print("En este grupo de personas hay:");
  print("$hombres Hombres");
  print("$mujeres Mujeres");
}