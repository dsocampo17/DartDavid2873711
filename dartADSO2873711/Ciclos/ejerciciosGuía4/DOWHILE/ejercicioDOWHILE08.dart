import 'dart:io';
void main(List<String> args) {
  // David Ocampo - Eje DOWHILE 08
  /* Hacer un programa que lea caracteres desde teclado y vaya contando las vocales que aparecen. El 
  programa terminará cuando lea el carácter # y entonces mostrará un mensaje indicando cuántas 
  vocales ha leído (cuántas de cada una de ellas)
  */

  //DECLARACION VARIABLES 
  String? Vocal;
  int caracterA = 0, caracterE = 0, caracterI = 0, caracterO = 0, caracterU = 0;  

  do {
    print("Ingrese caracter vocal (a/e/i/o/u/#):");
    Vocal = stdin.readLineSync();
    
      switch (Vocal) {
        case 'a':
          caracterA++;
        break;
        case 'e':
          caracterE++;
        break;
        case 'i':
          caracterI++;
        break;
        case 'o':
          caracterO++;
          break;
        case 'u':
          caracterU++;
        break;
        case '#':
          print("'Hasta pronto'");
        break;
        default:
        print("Opcion incorrecta.");
        print("Ingrese caracter 'a,e,o,u' o '# para salir");    
      }
  }
  while (Vocal != "#" );

  print("Cantidad de vocales leídas es:");
  print("a: $caracterA");
  print("e: $caracterE");
  print("i: $caracterI");
  print("o: $caracterO");
  print("u: $caracterU");
}