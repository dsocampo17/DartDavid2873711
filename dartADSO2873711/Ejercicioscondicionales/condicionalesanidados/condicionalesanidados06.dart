import 'dart:io';
void main(){
//MARIA PAULA MELO SOLANO-EJE CONDICIONALES ANIDADOS 06
/* El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año. La manera de planificarlas depende 
de lo siguiente: 

-Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su nuevo saldo sea de $1000000.
-Si su capital tiene actualmente un saldo positivo pedirá un préstamo bancario para tener un nuevo saldo de $2000000,
-pero si su capital tiene actualmente un saldo superior a los $2000000 no pedirá ningún préstamo. 

Posteriormente repartirá su presupuesto de la siguiente manera. 
• $500000 para equipo de computo 
• $200000 para mobiliario 
• y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal. Solicitar el capital y en base a este 
desplegar que cantidades se destinaran para la compra de insumos e incentivos al personal y, en caso de que fuera necesario, a cuanto 
ascendería la cantidad que se pediría al banco. */

  // Declaración variables
  double capitalActual, capitalNuevo; 
  double equipoComputo, mobiliario, insumos, incentivos; 
  double prestamo, restante;

  // Get current capital from user
  print("Ingrese el capital actual de la empresa: ");
  capitalActual = double.parse(stdin.readLineSync()!);

  // PROCESO
  if (capitalActual < 0) {
    capitalNuevo = 1000000; 
    prestamo = capitalNuevo - capitalActual; 
  } else if (capitalActual < 2000000) {
    capitalNuevo = 2000000; 
    prestamo = capitalNuevo - capitalActual; 
  } else {
    capitalNuevo = capitalActual; 
    prestamo = 0; 
  }

 
  equipoComputo = 500000;
  mobiliario = 200000;
  restante = capitalNuevo - equipoComputo - mobiliario; 
  insumos = restante / 2;
  incentivos = restante / 2;

  // Display results
  print("\nCapital actual: $capitalActual");
  print("Capital nuevo: $capitalNuevo");
  print("Préstamo (si es necesario): $prestamo");
  print("Presupuesto:");
  print("Insumos: $insumos");
  print("Incentivos al personal: $incentivos");
}




