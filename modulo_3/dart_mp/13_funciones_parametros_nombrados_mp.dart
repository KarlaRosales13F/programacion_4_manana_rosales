// required → el parámetro es obligatorio
// sin required → es opcional (necesita valor por defecto o ser nullable)
void configurarProgramaFidelizacion({
  required String nombreCliente,
  required int    puntosAcumulados,
  bool   bonoActivo    = true,
  int    diasVigencia  = 30,
}) {
  final estado = bonoActivo ? 'con bono activo' : 'sin bono';
  print('Cliente $nombreCliente: $puntosAcumulados pts $estado (vigencia: ${diasVigencia}d)');
}

void main() {
  // Los nombrados pueden pasarse en cualquier orden
  configurarProgramaFidelizacion(
    nombreCliente:   'Carlos Pérez',
    puntosAcumulados: 3200,
    bonoActivo:       false,
    diasVigencia:     60,
  );

  // Solo los obligatorios — los opcionales toman su valor por defecto
  configurarProgramaFidelizacion(
    nombreCliente:    'Ana López',
    puntosAcumulados: 1500,
  );
}