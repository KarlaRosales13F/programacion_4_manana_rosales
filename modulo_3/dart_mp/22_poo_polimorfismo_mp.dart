abstract class Premio {
  String get nombre;
  double calcularValor();
}

class DescuentoDirecto extends Premio {
  final double porcentaje;
  DescuentoDirecto(this.porcentaje);
  @override String get nombre => 'Descuento Directo';
  @override double calcularValor() => porcentaje * porcentaje;
}

class PuntosDobles extends Premio {
  final double puntosBase, multiplicador;
  PuntosDobles(this.puntosBase, this.multiplicador);
  @override String get nombre => 'Puntos Dobles';
  @override double calcularValor() => (puntosBase * multiplicador) / 2;
}

class RegaloSorpresa extends Premio {
  final double valorEstimado;
  RegaloSorpresa(this.valorEstimado);
  @override String get nombre => 'Regalo Sorpresa';
  @override double calcularValor() => 3.1416 * valorEstimado * valorEstimado;
}

void imprimirValor(Premio premio) {
  print('${premio.nombre}: ${premio.calcularValor().toStringAsFixed(2)} u²');
}

void main() {
  final premios = <Premio>[
    DescuentoDirecto(4),
    PuntosDobles(6, 3),
    RegaloSorpresa(5),
  ];

  for (final p in premios) {
    imprimirValor(p);
  }

  final mayor = premios.reduce((a, b) => a.calcularValor() > b.calcularValor() ? a : b);
  print('\nPremio más valioso: ${mayor.nombre}');
}