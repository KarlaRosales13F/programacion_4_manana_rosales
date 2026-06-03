//saludar Funcion sin parametro
void bienvenido(){
  print('Bienvenido al programa de fidelización')
}

//saludar Funcion sin parametro
void sumarPuntosSinParametro(){
  return 100 + 50;
}


// Sintaxis completa — preferida para funciones públicas
int sumarPuntos(int puntosActuales, int puntosGanados) {
  return puntosActuales + puntosGanados;
}

// Sintaxis de flecha — cuando el cuerpo es una sola expresión
int multiplicarPuntosPorBono(int puntos, int multiplicador) => puntos * multiplicador;

// void — cuando no se devuelve nada
void imprimirSeparador(String titulo) {
  print('─── $titulo ───');
}

// Dart puede inferir el tipo de retorno, pero es buena práctica declararlo
// explícitamente en funciones públicas para mejorar la legibilidad.

// Con tipo explícito — recomendado
String formatearPuntos(double puntos) => '${puntos.toStringAsFixed(0)} pts';

// Sin tipo — Dart infiere que retorna String
formatearPuntosSinTipo(double puntos) => '${puntos.toStringAsFixed(0)} pts';

void main() {
  print(formatearPuntos(1299.9));  // 1300 pts
}

// El tercer parámetro es opcional — puede omitirse al llamar
String construirUrlCliente(String host, String ruta, [int? clienteId]) {
  if (clienteId != null) {
    return 'https://$host:$clienteId$ruta';
  }
  return 'https://$host$ruta';
}

// Con valor por defecto — evita el chequeo de null
String construirUrlClienteV2(String host, String ruta, [int clienteId = 1001]) {
  return 'https://$host:$clienteId$ruta';
}

void main() {
  print(sumarPuntos(500, 150));             // 650
  print(multiplicarPuntosPorBono(200, 3));  // 600
  imprimirSeparador('Inicio');              // ─── Inicio ───
  print(formatearPuntos(1299.9));           // 1300 pts
  print(construirUrlCliente('loyalty.ejemplo.com', '/clientes'));              // https://loyalty.ejemplo.com/clientes
  print(construirUrlCliente('loyalty.ejemplo.com', '/clientes', 8080));       // https://loyalty.ejemplo.com:8080/clientes
  print(construirUrlClienteV2('loyalty.ejemplo.com', '/recompensas'));        // https://loyalty.ejemplo.com:1001/recompensas
}