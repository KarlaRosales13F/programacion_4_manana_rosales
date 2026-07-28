// Funcion sin parametros

void bienvenido() {
  print('Bienvenido al programa de fidelizacion');
}

// Funcion sin parametros que retorna valor

int sumarPuntosSinParametro() {
  return 100 + 50;
}

// Funcion tradicional

int sumarPuntos(
  int puntosActuales,
  int puntosGanados
) {

  return puntosActuales + puntosGanados;

}

// Funcion flecha

int multiplicarPuntosPorBono(
  int puntos,
  int multiplicador
) => puntos * multiplicador;

// Funcion void

void imprimirSeparador(
  String titulo
) {

  print('─── $titulo ───');

}

// Retorno explicito

String formatearPuntos(
  double puntos
) => '${puntos.toStringAsFixed(0)} pts';

// Retorno inferido

formatearPuntosSinTipo(
  double puntos
) => '${puntos.toStringAsFixed(0)} pts';

// Parametro opcional

String construirUrlCliente(

  String host,
  String ruta,

  [int? clienteId]

) {

  if(clienteId != null){

    return 'https://$host:$clienteId$ruta';

  }

  return 'https://$host$ruta';

}

// Parametro con valor por defecto

String construirUrlClienteV2(

  String host,
  String ruta,

  [int clienteId = 1001]

) {

  return 'https://$host:$clienteId$ruta';

}


void main() {

  bienvenido();

  print(
    sumarPuntosSinParametro()
  );

  print(
    sumarPuntos(500,150)
  );

  print(
    multiplicarPuntosPorBono(200,3)
  );

  imprimirSeparador(
    'Inicio'
  );

  print(
    formatearPuntos(1299.9)
  );

  print(
    formatearPuntosSinTipo(950.5)
  );

  print(

    construirUrlCliente(
      'loyalty.ejemplo.com',
      '/clientes'
    )

  );

  print(

    construirUrlCliente(
      'loyalty.ejemplo.com',
      '/clientes',
      8080
    )

  );

  print(

    construirUrlClienteV2(
      'loyalty.ejemplo.com',
      '/recompensas'
    )

  );

}