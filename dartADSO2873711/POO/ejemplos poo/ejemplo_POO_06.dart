class Vehiculo {
  String color;
  int velocidad;
  double tamanio;
    Vehiculo(this.color, this.velocidad, this.tamanio);

  void disminuirVelocidad(int decremento) {
    velocidad = (velocidad - decremento);
    print("El vehículo disminuye su velocidad. Velocidad actual: $velocidad");
  }

  //Metodo detenerse 
  void detenerse(){
    velocidad=0;
    print("El vehiculo se detuvo");
  }
}
  void main(List<String> arg){
    Vehiculo miVehiculo1;
    miVehiculo1 = Vehiculo("Blanco", 230, 3.5);
    miVehiculo1.disminuirVelocidad(60);
    miVehiculo1.disminuirVelocidad(70);
    miVehiculo1.detenerse();
    print("*" *50); 
    Vehiculo miVehiculo2 = Vehiculo("Negro", 100, 4.5);
    miVehiculo2.disminuirVelocidad(50);
    miVehiculo2.detenerse();
    //***** */
    miVehiculo1.disminuirVelocidad(40);
  }