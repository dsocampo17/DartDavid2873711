class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  void aumentarSalario(double porcentaje) {
    salario += salario * (porcentaje / 100);
    print("Salario aumentado. Nuevo salario: $salario");
  }

  void cumplirAnios() {
    edad++;
    print("$nombre cumple años. Nueva edad: $edad");
  }

  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
    print("Nuevo puesto de $nombre: $puesto");
  }

  void mostrarInformacion() {
    print("Nombre: $nombre, Edad: $edad, Salario: $salario, Puesto: $puesto, Tipo de Contrato: $tipoContrato");
  }

  double calcularBonificacion() {
    switch (tipoContrato) {
      case "Contratista":
        return salario * 0.10;
      case "Temporal":
        return salario * 0.05;
      case "Indefinido":
        return salario * 0.15;
      default:
        return 0;
    }
  }
}