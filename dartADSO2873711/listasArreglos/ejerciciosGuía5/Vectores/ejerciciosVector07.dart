import 'dart:io';

void main(List<String> args) {
  String? palabra;
  List<String> vectPalindrome = [];
  List<String> vectPalabra = [];
  print("Ingrese la palabra para comprobar Palíndrome");
  palabra = stdin.readLineSync()!;
  // Se recorre cada letra de la palabra y se envía al vector
  for (var i = 0; i < palabra.length; i++) {
    vectPalabra.add(palabra[i]);
    vectPalindrome.add(palabra[palabra.length - i - 1]);
  }
  print(vectPalabra);
  print(vectPalindrome);
  if (vectPalabra.toString() == vectPalindrome.toString()) {
    print("Es Palíndrome");
  } else {
    print("No es Palíndrome");
  }
}