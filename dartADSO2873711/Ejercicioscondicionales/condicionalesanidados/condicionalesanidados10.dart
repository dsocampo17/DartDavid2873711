import 'dart:io';
void main() {
  //David Ocampo - EJE Condicional Anidado 10
  //Definicion Vbles
  int edad;
  double nivelHemo;
  String? genero, resultado, opcionEdad;
  //ENTRADA Alg
  print("La persona es mayor a un año? Si(SI) y No(NO)");
  opcionEdad = stdin.readLineSync();
  print("Confirme su nivel de Hemoglobina");
  nivelHemo = double.parse(stdin.readLineSync()!);
  print("Por favor confirme su genero Hombre(H) y Mujer(M)");
  genero = stdin.readLineSync();
  //PROCESO Alg
  if (opcionEdad?.toUpperCase() == "SI") {
    print("Ingrese su edad en Años");
    edad = int.parse(stdin.readLineSync()!);
    if (edad <= 5) {
      // Menor o igual a 5
      if (nivelHemo < 11.5) {
        resultado = "Anemia";
      } else if (nivelHemo > 15) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else if (edad <= 10) {
      //Mayor a 5 y Menor o igual 10
      if (nivelHemo < 12.6) {
        resultado = "Anemia";
      } else if (nivelHemo > 15.5) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else if (edad <= 15) {
      //Mayor a 10 y Menor o igual 15
      if (nivelHemo < 13) {
        resultado = "Anemia";
      } else if (nivelHemo > 15.5) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else {
      //Mayor a 15
      if (genero?.toUpperCase() == "M") {
        //Género mujer
        if (nivelHemo < 12) {
          resultado = "Anemia";
        } else if (nivelHemo > 16) {
          resultado = "Cardiopatía";
        } else {
          resultado = "Normal";
        }
      } else {
        if (genero?.toUpperCase() == "H") {
          //Género mujer
          if (nivelHemo < 14) {
            resultado = "Anemia";
          } else if (nivelHemo > 18) {
            resultado = "Cardiopatía";
          } else {
            resultado = "Normal";
          }
        }
      }
    }
  } else {
    print("Ingrese la edad del bebé en meses");
    edad = int.parse(stdin.readLineSync()!);
    if (edad > 0 && edad <= 1) {
      if (nivelHemo < 13) {
        resultado = "Anemia";
      } else if (nivelHemo > 260) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else if (edad > 1 && edad <= 6) {
      if (nivelHemo < 10) {
        resultado = "Anemia";
      } else if (nivelHemo > 18) {
        resultado = "Cardipatía";
      } else {
        resultado = "normal";
      }
    }
  }
}