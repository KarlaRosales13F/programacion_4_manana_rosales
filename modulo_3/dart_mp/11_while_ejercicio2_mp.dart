void main() {
  int canjes    = 0;
  int puntos    = 1000;  

  while (puntos > 0) {
    final costo = puntos > 250 ? 250 : puntos;
    canjes++;
    puntos -= costo;
    print('Canje $canjes: $costo puntos usados (restante: $puntos)');
  }

  int reintentos = 0;
  bool canjeAprobado = false;

  do {
    reintentos++;
    print('Intento de canje #$reintentos...');
    if (reintentos == 3) canjeAprobado = true;
  } while (!canjeAprobado && reintentos < 5);

  print(canjeAprobado
      ? 'Canje aprobado tras $reintentos intentos'
      : 'No se pudo procesar el canje');
}