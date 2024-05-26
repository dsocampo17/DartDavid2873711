void main(List<String> args) {
  // David Ocampo - Eje DOWHILE 05
  /* Calcular la suma siguiente:
  100 + 98 + 96 + 94 + . . . + 0 en este orden
  */
  // DECLARACION DE VARIABLES   
  int contador = 100;      
  int suma = 0;          

  // PROCESO DE SUMA
  while (contador >= 0) {
    suma += contador;
    contador -= 2;
  }

  // RESULTADO FINAL
  print("El resultado total de la suma desde 100 hasta 0 restando de a dos es: $suma");
}