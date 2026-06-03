int puntosPorCompra(int monto)  => monto * 2;
int puntosPorReferido(int monto) => monto * 3;

void main() {
  // La variable 'calcularPuntos' tiene tipo: int Function(int)
  int Function(int) calcularPuntos;

  calcularPuntos = puntosPorCompra;
  print(calcularPuntos(100));     // 200

  calcularPuntos = puntosPorReferido;
  print(calcularPuntos(100));     // 300

  // Lista de funciones
  final reglasDeAcumulacion = <int Function(int)>[puntosPorCompra, puntosPorReferido];
  for (final fn in reglasDeAcumulacion) {
    print(fn(50));         // 100, luego 150
  }
}