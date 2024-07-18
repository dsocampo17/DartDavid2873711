class Persona1 {
  // Atributos
  String nombre;
  String genero;
  double estatura;
  DateTime fechaNac;
  int edad;

  // Constructor: funcion que se ejecuta cuando se crea un objeto de la clase
  Persona1(this.nombre, this.genero, this.estatura, this.fechaNac, this.edad);
  
  // Métodos
  void saludar(){
    print("Persona1 ${this.nombre} saluda ");
  }
  void comunicarse(){
    print("Persona1 ${this.nombre} se comunica ");
  }
  void dormir(){
    print("Persona1 ${this.nombre} duerme ");
  }
  int calcEdad(){
    DateTime now = DateTime.now();
    int edadd = now.year - fechaNac.year;
    if (now.month < fechaNac.month ||
        (now.month == fechaNac.month && now.day < fechaNac.day)) {
      edad--;
    }
    return edad;
  }

  void mostrarEdad(){
    print("Persona1 ${this.nombre} años");
  }
  void mostrarInformacion(){
    print("Persona1 se llama ${this.nombre}, su genero es ${this.genero}, su estatura es ${this.estatura} cm ");
  }
  // Fin clase
}
void main(List<String> args) {
  // Creamos el objeto clase perro
  Persona1 Persona1;
  Persona1 = Persona1("Fiona", "Femenino", 1.65);
  Persona1.saludar();
  Persona1.comunicarse();
  Persona1.dormir();
  Persona1.mostrarEdad();
  Persona1.mostrarInformacion();
  /*******************************************************/
                                                                 
}
