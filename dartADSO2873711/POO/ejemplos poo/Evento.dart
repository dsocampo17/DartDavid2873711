class Evento {
  String _nombre; // Atributo privado
  int cantPersonas; // Atributo público
  DateTime _fecha; // Atributo privado

  Evento(this._nombre, this.cantPersonas, this._fecha);

  // Métodos SETERS y GETERS
  void setNombre(String nom){
    _nombre = nom;
  }
  String getNombre() {
    return _nombre;
  }
  void setcantPersonas(int cant) {
    cantPersonas = cant;
  }
  int getcantPersonas() {
    return cantPersonas;
  }
  void setFechaEvento(DateTime fecha) {
    _fecha = fecha;
  }

  DateTime getFechaEvento() {
    return _fecha;
  }
  void mostrarInfo() {
    print("""
        Nombre: $_nombre;
        Cantidad de personas: $cantPersonas;
        Fecha del evento: $_fecha;
        """);
  }
}