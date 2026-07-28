void main() {
  final comprasClientes = [29.99, 49.50, 15.00, 99.99];

  // map devuelve un Iterable con cada elemento transformado
  final puntosGenerados = comprasClientes.map((c) => c * 1.15);
  print(puntosGenerados.toList());
  // [34.4885, 56.925, 17.25, 114.9885]

  // map sobre Strings
  final categorias = ['/bronce', '/plata', '/oro'];
  final urlsNiveles = categorias.map((e) => 'https://loyalty.ejemplo.com$e');
  print(urlsNiveles.toList());
  // [https://loyalty.ejemplo.com/bronce, ...]

  void main() {
  final puntosAcumulados = [360.1, 378.8, 392.2, 365.5, 387.7, 359.9];

  final clientesVip = puntosAcumulados.where((p) => p > 375.5);
  print(clientesVip.toList());  // [378.8, 392.2, 387.7]

  final clientesEstandar = puntosAcumulados.where((p) => p >= 360.0 && p <= 375.5);
  print(clientesEstandar.toList());   // [360.1, 365.5]
}
}