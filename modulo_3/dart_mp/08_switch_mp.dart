void main() {
  String estadoCanje = 'VENCIDO';

  switch (estadoCanje) {
    case 'ACTIVO':
      print('Membresia activa');
    case 'NUEVO':
      print('Cliente nuevo');
    case 'PENDIENTE':
      print('Canje pendiente');
    case 'SUSPENDIDO':
      print('Cuenta suspendida');
    case 'VENCIDO':
      print('Membresia vencida');
    case 'CANJEADO':
      print('Recompensa canjeada');
    default:
      print('Estado desconocido');
  }

  String estadoCanje = 'VENCIDO';

  String descripcion = switch (estadoCanje) {
    'ACTIVO'     => 'Activo — membresia vigente',
    'NUEVO'      => 'Nuevo — cliente recien registrado',
    'PENDIENTE'  => 'Pendiente — canje en proceso',
    'SUSPENDIDO' => 'Suspendido — cuenta bloqueada',
    'VENCIDO'    => 'Vencido — membresia expirada',
    'CANJEADO'   => 'Canjeado — recompensa entregada',
    'CANCELADO'  => 'Cancelado — canje anulado',
    'RECHAZADO'  => 'Rechazado — puntos insuficientes',
    'BLOQUEADO'  => 'Bloqueado — cliente inactivo',
    _            => 'Estado Loyaltee desconocido',  

  print(descripcion);  
  int puntosCliente = 850;


  String categoria = switch (puntosCliente) {
    100 || 150 || 200          => 'Nivel Bronce',
    300 || 400 || 450          => 'Nivel Plata',
    500 || 600 || 700 || 850   => 'Nivel Oro',
    1000 || 2000 || 3000       => 'Nivel Platino',
    _                          => 'Sin nivel asignado',
  };

  print(categoria);  

  double puntos = 3200.0;

  String nivelLoyaltee = switch (puntos) {
    double p when p >= 5000.0 => '💎 VIP — beneficios exclusivos',
    double p when p >= 3000.0 => '🏆 PLATINO — maximos beneficios',
    double p when p >= 1000.0 => '🥇 ORO — grandes beneficios',
    double p when p >= 500.0  => '🥈 PLATA — buenos beneficios',
    _                         => '🥉 BRONCE — beneficios basicos',
  };

  print(nivelLoyaltee);  
  
  Object respuestaApi = {'id': 1, 'cliente': 'Ana Garcia', 'puntos': 850.0};

  String resultado = switch (respuestaApi) {
    Map<String, dynamic> m when m.containsKey('error') =>
        'Error: ${m['error']}',
    Map<String, dynamic> m =>
        'Cliente: ${m['cliente']} — ${m['puntos']} pts',
    List<dynamic> lista =>
        '${lista.length} recompensas disponibles',
    String texto =>
        'Mensaje recibido: $texto',
    _ =>
        'Respuesta desconocida',
  };

  print(resultado);  
}