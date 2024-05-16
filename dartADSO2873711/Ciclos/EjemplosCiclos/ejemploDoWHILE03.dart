import 'dart:io';

void main(List<String> args) {
  /*
  */
  //Declaracion Vlbes
  int clave = 0000, claveIngresada;

  print("Digite la clave");
  do {
    claveIngresada=int.parse(stdin.readLineSync()!);
    if (claveIngresada != clave) {
      print("La clave ingresada no es válida");
    }else {
      print("La clave es válida");
    }
  } while (clave != claveIngresada);
}
  