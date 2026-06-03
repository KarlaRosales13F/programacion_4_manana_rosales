void main() {
  // Lambda asignada a una variable
  final puntosAlCuadrado = (int puntos) => puntos * puntos;
  print(puntosAlCuadrado(7));  // 49

  // Lambda de cuerpo completo
  final calcularPuntosConDescuento = (double puntos, double pct) {
    final descuento = puntos * (pct / 100);
    return puntos - descuento;
  };
  print(calcularPuntosConDescuento(1000.0, 15.0));  // 850.0

  // Lambda en línea — pasada directamente como argumento
  final puntosClientes = [300, 150, 400, 150, 500, 900, 200, 600];
  puntosClientes.sort((a, b) => b.compareTo(a));  // orden descendente
  print(puntosClientes);  // [900, 600, 500, 400, 300, 200, 150, 150]
}