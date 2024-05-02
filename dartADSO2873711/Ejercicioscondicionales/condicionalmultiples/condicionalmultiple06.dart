import 'dart:io';
void main(){
//MARIA PAULA MELO SOLANO- EJE condicional multiple 06
/*Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene.
Es necesario tener en cuenta si es año bisiesto o no*/

  // Definición de variables
  String mes;
  int anio;
  int diasMes;

  // Entrada de datos
  print('Ingrese el nombre del mes (en minúsculas):');
  mes = stdin.readLineSync()!.toLowerCase();

  print('Ingrese el año:');
  anio = int.parse(stdin.readLineSync()!);

  // Cálculo del número de días
  switch (mes) {
    case 'enero':
      diasMes = 31;
      break;
    case 'febrero':
      if (esBisiesto(anio)) {
        diasMes = 29;
      } else {
        diasMes = 28;
      }
      break;
    case 'marzo':
      diasMes = 31;
      break;
    case 'abril':
      diasMes = 30;
      break;
    case 'mayo':
      diasMes = 31;
      break;
    case 'junio':
      diasMes = 30;
      break;
    case 'julio':
      diasMes = 31;
      break;
    case 'agosto':
      diasMes = 31;
      break;
    case 'septiembre':
      diasMes = 30;
      break;
    case 'octubre':
      diasMes = 31;
      break;
    case 'noviembre':
      diasMes = 30;
      break;
    case 'diciembre':
      diasMes = 31;
      break;
    default:
      print('Error: El mes ingresado no es válido.');
      return;
  }

  // Salida
  print('El mes $mes del año $anio tiene $diasMes días.');
}

// Función para determinar si un año es bisiesto
bool esBisiesto(int anio) {
  if (anio % 400 == 0) {
    return true;
  } else if (anio % 100 == 0) {
    return false;
  } else if (anio % 4 == 0) {
    return true;
  } else {
    return false;
  }
}

