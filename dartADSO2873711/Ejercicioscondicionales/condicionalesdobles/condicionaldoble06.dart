import 'dart:io';
void main(List<String> args) {
  //David Ocampo - EJE Condicional Doble 06
  /*
  El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la
  superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera: (cruadro 1)
  
  Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la
  sig. manera: (cuadro 2)
  */
  // Declaración variables 
    double bosqueHectareas, bosqueMetros, cantPino, cantRoble, cantCedro, porcPino, porcRoble, porcCedro;
  
  // ENTRADA
  print("hectareas del bosque");
  bosqueHectareas=double.parse(stdin.readLineSync()!);
  
  // PROCESO
  cantPino=(bosqueHectareas*8)/10;
  
  cantRoble=(bosqueHectareas*15)/15;
  
  cantCedro=(bosqueHectareas*10)/18;
  
  bosqueMetros=bosqueHectareas*10000;
  
  if(bosqueMetros==1000000){
    print("se plantaá un 70% de pino, un 20% de roble y un 10% de cedro");
    porcPino=cantPino*0.7;
    porcRoble=cantRoble*0.2;
    porcCedro=cantCedro*0.1;
  }else{
  print("se plantaá un 50% de pino, un 30% de roble y un 20% de cedro");
  porcPino=cantPino*0.5;
  porcRoble=cantRoble*0.3;
  porcCedro=cantCedro*0.2;
  }
  print("se plantarán $porcPino, $porcCedro, $porcRoble en $bosqueMetros metros cuadrados de bosque");
}
