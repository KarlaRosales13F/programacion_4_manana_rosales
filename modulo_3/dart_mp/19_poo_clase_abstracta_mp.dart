// abstract class define el contrato — QUÉ puede hacer cualquier Recompensa
abstract class Recompensa {
  String get nombre;
  double calcularDescuento();     // cada recompensa lo implementa a su manera
  int    calcularPuntosRequeridos();

  // Método concreto construido sobre la abstracción
  void describir() {
    print('$nombre — descuento: ${calcularDescuento().toStringAsFixed(2)}%, '
          'puntos requeridos: ${calcularPuntosRequeridos()}');
  }
}

// Implementaciones concretas — el CÓMO es específico de cada clase
class CuponDescuento extends Recompensa {
  final double porcentaje;
  CuponDescuento(this.porcentaje);

  @override String get nombre => 'Cupón Descuento ($porcentaje%)';
  @override double calcularDescuento()        => porcentaje;
  @override int    calcularPuntosRequeridos() => (porcentaje * 100).toInt();
}

class EnvioGratis extends Recompensa {
  final double valorEnvio;
  EnvioGratis(this.valorEnvio);

  @override String get nombre => 'Envío Gratis (valor \$$valorEnvio)';
  @override double calcularDescuento()        => 100.0;
  @override int    calcularPuntosRequeridos() => (valorEnvio * 10).toInt();
}

void main() {
  final recompensas = <Recompensa>[CuponDescuento(15), EnvioGratis(8.5)];
  for (final r in recompensas) {
    r.describir();  // no importa qué tipo de Recompensa es
  }
}