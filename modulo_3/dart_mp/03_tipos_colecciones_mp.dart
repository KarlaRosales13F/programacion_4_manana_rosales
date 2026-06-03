void main() {
  // List — lista ordenada (como List en Kotlin)
  List<String> recompensas = ['Descuento 10%', 'Envio gratis', 'Producto gratis'];
  var          puntos      = [100, 200, 300, 400, 500];  // tipo inferido: List<int>

  print(recompensas[0]);         // Descuento 10%
  print(recompensas.length);     // 3
  recompensas.add('Acceso VIP');
  recompensas.remove('Envio gratis');

  // Map — clave → valor (como Map en Kotlin)
  Map<String, int> puntosClientes = {
    'Ana':   850,
    'Luis':  1200,
    'María': 430,
  };

  print(puntosClientes['Ana']);     // 850
  print(puntosClientes['Pedro']);   // null — clave no existe
  puntosClientes['Carlos'] = 960;   // añadir

  // Set — sin duplicados (como Set en Kotlin)
  Set<String> niveles = {'Bronce', 'Oro', 'Platino'};
  niveles.add('Bronce');      // ignorado — ya existe
  print(niveles.length);      // 3

  // Spread operator — para combinar colecciones
  var lista1 = [100, 200, 300];
  var lista2 = [400, 500, 600];
  var combinada = [...lista1, ...lista2];  // [100, 200, 300, 400, 500, 600]
  print(combinada);

  // Collection if — elementos condicionales
  bool esVip = true;
  var beneficios = [
    'Descuento 10%',
    'Envio gratis',
    if (esVip) 'Acceso sala VIP',  // solo si la condición es true
  ];

  // Collection for — generar elementos
  var bonusPuntos = [for (var i = 1; i <= 5; i++) i * 100];
  print(bonusPuntos);  // [100, 200, 300, 400, 500]
}