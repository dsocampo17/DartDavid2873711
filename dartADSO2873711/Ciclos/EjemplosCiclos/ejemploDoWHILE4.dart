import 'dart:io';

void main(List<String> args) {
  /*
  */
  // Se defina una lista vaciía
  List<double> numeros = [];
  List<double> mayoresProm;
  int cantNumeros=10;
  double num, sumaNumeros = 0, promedio;
  // Ciclo para llenar el Vector
  for (var i = 0; 1 < cantNumeros; i++){
    print("Ingrese el número #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num); //Se ingresa el número a la lista
    sumaNumeros += num;
  }
  promedio = sumaNumeros / numeros.length;
  print(numeros);
  print("El promedio es: $promedio");
  numeros.removeAt(0);
  for (var i = 0; 1 < numeros.length; i++) {
    if(numeros[i] > promedio) {
      
    }
  }
}