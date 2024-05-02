import 'dart:io';
void main(List<String> args) {
  //MARIA PAULA MELO SOLANO- EJE condicional doble 06
  /*
El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la
superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera: (cruadro 1)

Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la
sig. manera: (cuadro 2)
*/
//Declaración variables 
  double bosqueHECTAREAS, bosqueMETROS, cantPino, cantRoble, cantCedro, porcPino, porcRoble, porcCedro;

  //ENTRADA
print("hectareas del bosque");
bosqueHECTAREAS=double.parse(stdin.readLineSync()!);

//PROCESO
cantPino=(bosqueHECTAREAS*8)/10;

cantRoble=(bosqueHECTAREAS*15)/15;

cantCedro=(bosqueHECTAREAS*10)/18;

bosqueMETROS=bosqueHECTAREAS*10000;

if(bosqueMETROS==1000000){
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
print("se plantarán $porcPino, $porcCedro, $porcRoble en $bosqueMETROS metros cuadrados de bosque");
}
