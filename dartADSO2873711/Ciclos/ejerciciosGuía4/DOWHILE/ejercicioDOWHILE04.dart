import 'dart:io';

void main(List<String> args) {
  // David Ocampo - Eje DOWHILE 04
  /* Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población 
  y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje 
  tiene estudios de primaria, secundaria, carrera técnica, estudios profesionales y estudios de 
  posgrado.
  El programa debe preguntar si se desea continuar ingresando datos.
  */

  //DECLARACION 
  int contador = 0;       
  int personasEncuestadas;   
  String? tipoEstudio, opcion;
  int primaria = 0, secundaria = 0, carreraTecnica = 0, estudiosProfesionales = 0, estudiosPosgrado = 0;
  double porcenPrimaria, porcenSecundaria, porcentecnico, porcenProfesional, porcenPosgrado;
  
  //ENTRADA DATOS 
  print("Ingrese la cantidad de personas encuestadas:");
  personasEncuestadas = int.parse(stdin.readLineSync()!);
   
  do {
    print("Ingrese el tipo de estudio de la persona (primeria/secundaria/tecnico/profesional/posgrado ${contador+1}");
    tipoEstudio = stdin.readLineSync();                                                  
    while ( tipoEstudio != "primaria" && tipoEstudio != "secundaria" && tipoEstudio != "tecnico" && tipoEstudio != "profesional" && tipoEstudio != "posgrado" ) {  
      print("Dato invalido, ingrese nuevamente:");                                                                                
      print("Ingrese el tipo de estudio de la persona (primeria/secundaria/tecnico/profesional/posgrado) ${contador+1}");
      tipoEstudio = stdin.readLineSync();
    }
 if ( tipoEstudio == "primaria") {
primaria++;
print("Personas de primaria va en $primaria");
  }
      else if ( tipoEstudio == "secundaria" ) {
            secundaria++;
            print("Personas de secundaria va en $secundaria");
          }
          else if ( tipoEstudio == "tecnico" ) {
                  carreraTecnica++;
                  print("Personas tecnicas va en $carreraTecnica");
                }
                else if ( tipoEstudio == "profesional" ) {
                      estudiosProfesionales++;
                      print("Personas profesionales va en $estudiosProfesionales");
                    }
                    else if ( tipoEstudio == "posgrado" ) {
                          estudiosPosgrado++;
                          print("Personas de posgrado va en $estudiosPosgrado");
                         }
      
      print("Desea continuar: SI (si) - NO (no)");    
      opcion = stdin.readLineSync();
      if ( opcion == "no" ) {           
        contador = personasEncuestadas;
      }  
                      
    contador++;
  } 
  while ( contador < personasEncuestadas );

  porcenPrimaria    = (primaria / personasEncuestadas) * 100;
  porcenSecundaria  = (secundaria / personasEncuestadas) * 100;
  porcentecnico     = (carreraTecnica / personasEncuestadas) * 100;
  porcenProfesional = (estudiosProfesionales / personasEncuestadas) * 100;
  porcenPosgrado    = (estudiosPosgrado / personasEncuestadas) * 100;

  print("********************************************************");
  print("La cantidad de personas encuentadas es: $personasEncuestadas");
  print("El total de personas de primaria es $primaria");
  print("El total de personas de secundaria es $secundaria");
  print("El total de personas técnicas es $carreraTecnica");
  print("El total de personas profesionales es de $estudiosProfesionales");
  print("El total de personas de posgrado es de $estudiosPosgrado");
  print("************************************************************");
  print("Porcentaje de personas de primaria $porcenPrimaria %");
  print("Porcentaje de personas de secundaria $porcenSecundaria %");
  print("Porcentaje de personas tecnicas $porcentecnico %");
  print("Porcentaje de personas profesionales $porcenProfesional %");
  print("Porcentaje de personas posgrado $porcenPosgrado %");
  
}