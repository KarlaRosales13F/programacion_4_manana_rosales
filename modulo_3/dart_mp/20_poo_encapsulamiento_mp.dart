class TarjetaFidelizacion {
  final String titular;
  double _puntos;  

  TarjetaFidelizacion(this.titular, double puntosIniciales)
      : _puntos = puntosIniciales;


  double get puntos => _puntos;


  void acumularPuntos(double monto) {
    if (monto <= 0) throw ArgumentError('El monto debe ser positivo');
    _puntos += monto;
    print('Acumulación de $monto pts. Total de puntos: $_puntos');
  }

  void canjearPuntos(double monto) {
    if (monto <= 0)      throw ArgumentError('El monto debe ser positivo');
    if (monto > _puntos) throw StateError('Puntos insuficientes');
    _puntos -= monto;
    print('Canje de $monto pts. Total de puntos: $_puntos');
  }
}

void main() {
  final tarjeta = TarjetaFidelizacion('Ana López', 500.0);

  tarjeta.acumularPuntos(200.0);  
  tarjeta.canjearPuntos(150.0);   
  print(tarjeta.puntos);         

}