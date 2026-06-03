void main() {
  // Forma básica
  int puntos = 850;

  if (puntos >= 1000) {
    print('Nivel Platino');
  } else if (puntos >= 500) {
    print('Nivel Oro');
  } else {
    print('Nivel Bronce');
  }

  // Operador ternario — para decisiones de una línea
  // condición ? valorSiVerdadero : valorSiFalso
  String estado = puntos >= 500 ? 'Cliente frecuente' : 'Cliente regular';
  print(estado);

  // null-aware con ternario
  String? codigoReferido;
  String display = codigoReferido != null ? codigoReferido.toUpperCase() : 'Sin codigo referido';

  // Forma más concisa con Elvis
  String display2 = codigoReferido?.toUpperCase() ?? 'Sin codigo referido';
  print(display2);  // Sin codigo referido
}