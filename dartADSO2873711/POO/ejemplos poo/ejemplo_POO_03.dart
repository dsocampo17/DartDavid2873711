class Vehiculo {
  late String color;
  late int velocidad;
  late double tamanio;

  //Constructor Clase de vehiculo
  Vehiculo(String col, int vel, double tam){
    this.color=col;
    this.velocidad=vel;
    this.tamanio=tam;
  }
  //Metodo Avanzar
  void avanzar (int velAvanzar){
    this.velocidad=this.velocidad + velAvanzar;
    print("El vehiculo avanza a ${this.velocidad}");
  }

  //Metodo detenerse 
  void detenerse(){
    velocidad=0;
    print("El vehiculo se detuvo");
  }

}
  void main(List<String> arg){
    Vehiculo miVehiculo1;
    miVehiculo1 = Vehiculo("Blanco", 30, 3.5);
    miVehiculo1.avanzar(60);
    miVehiculo1.avanzar(70);
    miVehiculo1.detenerse();
    //*********** */
    Vehiculo miVehiculo2 = Vehiculo("Negro", 10, 4.5);
    miVehiculo2.avanzar(50);
    miVehiculo2.detenerse();
    //*********** */
    miVehiculo1.avanzar(40);
  }