import 'dart:io';
import 'dart:math';

void main() {
  List<TemaExposicion> temas = [];
  List<Estudiante> estudiantes = [];

  var opcion;
  do {
    print('----- Menú Principal -----');
    print('1. Crear tema de exposición');
    print('2. Ingresar estudiante');
    print('3. Asignar estudiantes a temas');
    print('4. Mostrar temas y estudiantes');
    print('5. Salir');

    String? opcion = obtenerEntradaUsuario('Ingrese una opción: ');

    switch (opcion) {
      case '1':
        crearTemaExposicion(temas);
        break;
      case '2':
        ingresarEstudiante(estudiantes);
        break;
      case '3':
        asignarEstudiantesATemas(temas, estudiantes);
        break;
      case '4':
        mostrarTemasYEstudiantes(temas);
        break;
      case '5':
        print('¡Hasta luego!');
        break;
      default:
        print('Opción no válida. Intente de nuevo.');
        break;
    }
  } while (opcion != '5');
}

class TemaExposicion {
  String nombre;
  int cantidadEstudiantes;

  TemaExposicion(this.nombre, this.cantidadEstudiantes);
}

class Estudiante {
  String nombreCompleto;

  Estudiante(this.nombreCompleto);
}

void crearTemaExposicion(List<TemaExposicion> temas) {
  print('----- Crear Tema de Exposición -----');
  String nombre = obtenerEntradaUsuario('Ingrese el nombre del tema: ');
  int cantidadEstudiantes = int.parse(obtenerEntradaUsuario('Ingrese la cantidad de estudiantes asociada: '));
  TemaExposicion tema = TemaExposicion(nombre, cantidadEstudiantes);
  temas.add(tema);
  print('Tema de exposición creado correctamente.');
}

void ingresarEstudiante(List<Estudiante> estudiantes) {
  print('----- Ingresar Estudiante -----');
  String nombreCompleto = obtenerEntradaUsuario('Ingrese el nombre completo del estudiante: ');
  Estudiante estudiante = Estudiante(nombreCompleto);
  estudiantes.add(estudiante);
  print('Estudiante ingresado correctamente.');
}
/////////////////////////////////////////////Parte de Pineda///////////////////////////////////////////
void asignarEstudiantesATemas(List<TemaExposicion> temas, List<Estudiante> estudiantes) {
  print('----- Asignar Estudiantes a Temas -----');
  if (temas.isEmpty || estudiantes.isEmpty) {
    print('No hay temas o estudiantes ingresados para asignar.');
    return;
  }

  // Asignación aleatoria de estudiantes a temas
  temas.forEach((tema) {
    tema.cantidadEstudiantes = min(tema.cantidadEstudiantes, estudiantes.length);
    tema.cantidadEstudiantes = max(0, tema.cantidadEstudiantes);
    for (int i = 0; i < tema.cantidadEstudiantes; i++) {
      int indiceAleatorio = Random().nextInt(estudiantes.length);
      Estudiante estudianteAsignado = estudiantes.removeAt(indiceAleatorio);
      print('Estudiante ${estudianteAsignado.nombreCompleto} asignado al tema ${tema.nombre}.');
    }
  });

  // Verificar si quedan estudiantes sin asignar
  if (estudiantes.isNotEmpty) {
    print('Quedan estudiantes sin asignar a temas.');
    estudiantes.forEach((estudiante) {
      print('Estudiante ${estudiante.nombreCompleto} no asignado.');
    });
  }
}

void mostrarTemasYEstudiantes(List<TemaExposicion> temas) {
  print('----- Mostrar Temas y Estudiantes -----');
  if (temas.isEmpty) {
    print('No hay temas de exposición ingresados.');
    return;
  }

  temas.forEach((tema) {
    print('Tema: ${tema.nombre} - Estudiantes asignados: ${tema.cantidadEstudiantes}');
  });
}

String obtenerEntradaUsuario(String mensaje) {
  print(mensaje);
  return stdin.readLineSync()!;
}