import 'dart:io';
import 'dart:math';
void main() {
  Map<String, dynamic> estudiantes = {};
  Map<String, dynamic> temas = {};

  while (true) {
    print('Menú:');
    print('1. Ingresar estudiantes');
    print('2. Ingresar temas');
    print('3. Repartir estudiantes');
    print('4. Salir');
    print('Ingrese su opción: ');

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        ingresarEstudiantes(estudiantes);
        break;
      case 2:
        ingresarTemas(temas);
        break;
      case 3:
        repartirEstudiantes(estudiantes, temas);
        return; // Salir del programa después de repartir estudiantes
      case 4:
        return;
    }
  }
}

void ingresarEstudiantes(Map<String, dynamic> estudiantes) {
  print('Ingrese cantidad de estudiantes: ');
  int cantidad = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidad; i++) {
    print('Ingrese nombre del estudiante ${i + 1}: ');
    String nombre = stdin.readLineSync()!;
    estudiantes[nombre] = {};
  }
}

void ingresarTemas(Map<String, dynamic> temas) {
  print('Ingrese cantidad de temas: ');
  int cantidad = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidad; i++) {
    print('Ingrese nombre del tema ${i + 1}: ');
    String nombre = stdin.readLineSync()!;
    print('Ingrese complejidad del tema (1-5): ');
    int complejidad = int.parse(stdin.readLineSync()!);
    temas[nombre] = {'complejidad': complejidad, 'estudiantes': []};
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
void repartirEstudiantes(Map<String, dynamic> estudiantes, Map<String, dynamic> temas) {
  List<String> estudiantesList = estudiantes.keys.toList();
  Random random = Random();

  temas.forEach((tema, temaData) {
    int cantidadEstudiantes = getCantidadEstudiantes(temaData['complejidad']);
    List<String> estudiantesAsignados = [];

    for (int i = 0; i < cantidadEstudiantes; i++) {
      if (estudiantesList.isNotEmpty) {
        int indice = random.nextInt(estudiantesList.length);
        String estudiante = estudiantesList[indice];
        estudiantesAsignados.add(estudiante);
        estudiantesList.removeAt(indice);
      } else {
        // Si no hay más estudiantes, asignar a cualquier tema
        temas.forEach((t, td) {
          if (td['estudiantes'].length < getCantidadEstudiantes(td['complejidad'])) {
            td['estudiantes'].add(estudiantes.keys.first);
            estudiantes.remove(estudiantes.keys.first);
            return;
          }
        });
      }
    }

    temaData['estudiantes'] = estudiantesAsignados;
  });

  print('Estudiantes repartidos:');
  temas.forEach((tema, temaData) {
    print('Tema: $tema');
    print('Estudiantes: ${temaData['estudiantes'].join(', ')}');
  });
}

int getCantidadEstudiantes(int complejidad) {
  if (complejidad <= 2) {
    return 3;
  } else if (complejidad == 3) {
    return 3;
  } else {
  return 4;
}
}