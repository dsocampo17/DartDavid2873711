import 'dart:io';

void main(List<String> args) {
  // David Ocampo - Eje Matriz 03
  /*
    La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por día, la compañía necesita obtener un reporte al final del día del total de la producción por artículo y el total de la producción por turno. Desarrollar un programa que pida al usuario el nombre de cada artículo y la producción que se hizo en cada uno de los tres turnos del día y genere un reporte al final del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por turno y el artículo con mayor producción.
    
    | Articulo \Turno | Turno 1 | Turno 2 | Turno 3 |
    | Articulo 1 | 30 | 40 | 20 |
    | Articulo 2 | 10 | 12 | 15 | 
    | Articulo 3 | 81 | 07 | 
    | Articulo 4 | 25 | 30 | 30 |
    | Articulo 5 | 12 | 20 | 10 |
  */

  int numArticulos = 5;
  int numTurnos = 3;

  List<String> nombresArticulos = List.filled(numArticulos, '');
  List<List<int>> produccion =
      List.generate(numArticulos, (_) => List.filled(numTurnos, 0));

  for (int i = 0; i < numArticulos; i++) {
    print('Ingrese el nombre del artículo ${i + 1}:');
    nombresArticulos[i] = stdin.readLineSync()!;
    for (int j = 0; j < numTurnos; j++) {
      print(
          'Ingrese la producción del artículo "${nombresArticulos[i]}" en el turno ${j + 1}:');
      produccion[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  List<int> totalProduccionPorArticulo = List.filled(numArticulos, 0);
  List<int> totalProduccionPorTurno = List.filled(numTurnos, 0);

  for (int i = 0; i < numArticulos; i++) {
    for (int j = 0; j < numTurnos; j++) {
      totalProduccionPorArticulo[i] += produccion[i][j];
      totalProduccionPorTurno[j] += produccion[i][j];
    }
  }

  int maxProduccion = totalProduccionPorArticulo[0];
  int indiceMaxProduccion = 0;
  for (int i = 1; i < numArticulos; i++) {
    if (totalProduccionPorArticulo[i] > maxProduccion) {
      maxProduccion = totalProduccionPorArticulo[i];
      indiceMaxProduccion = i;
    }
  }

  print('\nReporte de Producción:');
  for (int i = 0; i < numArticulos; i++) {
    print(
        'Total producción del artículo "${nombresArticulos[i]}": ${totalProduccionPorArticulo[i]}');
  }
  for (int j = 0; j < numTurnos; j++) {
    print(
        'Total producción en el turno ${j + 1}: ${totalProduccionPorTurno[j]}');
  }
  print(
      'El artículo con mayor producción es "${nombresArticulos[indiceMaxProduccion]}" con una producción de $maxProduccion unidades.');
}