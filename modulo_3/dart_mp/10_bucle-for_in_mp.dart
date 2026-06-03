void main() {
  final niveles = ['Bronce', 'Plata', 'Oro', 'Platino', 'Diamante'];

  // for-in — la forma idiomática para recorrer listas
  for (final nivel in niveles) {
    print(nivel);
  }

  // forEach con lambda — alternativa funcional
  niveles.forEach((n) => print(n.toLowerCase()));

  // for-in sobre un Map
  final puntosRequeridos = {'Bronce': 100, 'Oro': 500, 'Platino': 1000, 'Diamante': 5000};
  for (final entrada in puntosRequeridos.entries) {
    print('${entrada.key} → ${entrada.value} puntos requeridos');
  }

  // for-in sobre caracteres de un String
  for (final caracter in 'Loyaltee') {
    print(caracter);
  }
}