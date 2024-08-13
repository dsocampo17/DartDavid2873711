import 'Evento.dart';

void main(List<String> args) {
  // DateTime fecha = DateTime(2024, 8, 13);
  Evento evento1 = new Evento("Campeonato CPIC", 30, DateTime(2024,8,13,10,3));

  String nombre = evento1.getNombre();
  print(nombre);
  evento1.setNombre("Campeonato SENA - CPIC");
  nombre = evento1.getNombre();
  print(nombre);

  print(evento1.cantPersonas);
}