class NivelFidelizacion {
  final String nombre;
  final int    puntosMinimos;
  final int    puntosMaximos;
  final bool   tieneBonoEspecial;

  // Constructor principal
  NivelFidelizacion({
    required this.nombre,
    required this.puntosMinimos,
    required this.puntosMaximos,
    this.tieneBonoEspecial = false,
  });

  // Constructor nombrado — alternativa de creación con configuración predefinida
  NivelFidelizacion.bronce()
      : nombre            = 'Bronce',
        puntosMinimos     = 0,
        puntosMaximos     = 999,
        tieneBonoEspecial = false;

  NivelFidelizacion.oro({required this.nombre, required this.puntosMinimos})
      : puntosMaximos     = 99999,
        tieneBonoEspecial = true;

  // Constructor factory — lógica de creación más compleja
  factory NivelFidelizacion.desdePuntos(int puntos) {
    // Determina el nivel según los puntos acumulados
    if (puntos >= 5000) {
      return NivelFidelizacion(
        nombre:            'Platino',
        puntosMinimos:     5000,
        puntosMaximos:     99999,
        tieneBonoEspecial: true,
      );
    }
    return NivelFidelizacion(
      nombre:            'Plata',
      puntosMinimos:     1000,
      puntosMaximos:     4999,
      tieneBonoEspecial: puntos >= 2500,
    );
  }

  @override
  String toString() =>
      '${tieneBonoEspecial ? "⭐ " : ""}$nombre: $puntosMinimos - $puntosMaximos pts';
}

void main() {
  final n1 = NivelFidelizacion(nombre: 'Plata', puntosMinimos: 1000, puntosMaximos: 4999);
  final n2 = NivelFidelizacion.bronce();
  final n3 = NivelFidelizacion.oro(nombre: 'Oro', puntosMinimos: 3000);
  final n4 = NivelFidelizacion.desdePuntos(6200);

  print(n1);  // Plata: 1000 - 4999 pts
  print(n2);  // Bronce: 0 - 999 pts
  print(n3);  // ⭐ Oro: 3000 - 99999 pts
  print(n4);  // ⭐ Platino: 5000 - 99999 pts
}