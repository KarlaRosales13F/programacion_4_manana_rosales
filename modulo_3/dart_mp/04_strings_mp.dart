void main() {
  final cliente = 'Ana';
  final puntos  = 850;

  // Interpolación con $ (igual que en Kotlin)
  print('Hola, $cliente');                    // Hola, Ana

  // Expresión con ${ }
  print('${cliente.toUpperCase()} tiene ${puntos + 100} puntos el próximo mes');

  // String multilinea con triple comillas
  final tarjeta = '''
Cliente: $cliente
Puntos:  $puntos
VIP:     ${puntos >= 500 ? 'Sí' : 'No'}
  ''';
  print(tarjeta);

  // Raw string — ignora el escape y la interpolación
  final ruta = r'C:\Loyaltee\Clientes\Ana';  // el \ no se interpreta
  print(ruta);

  // Concatenación (menos idiomático — preferir interpolación)
  final saludo = 'Bienvenido a Loyaltee, ' + cliente + '!';

  // Métodos útiles de String
  print('loyaltee'.toUpperCase());           // LOYALTEE
  print('  Loyaltee  '.trim());              // Loyaltee
  print('Loyaltee'.contains('alt'));         // true
  print('Loyaltee'.replaceAll('l', 'L'));    // LoyaLtee
  print('Bronce,Oro,Platino'.split(','));    // [Bronce, Oro, Platino]
  print('Loyaltee'.substring(0, 4));         // Loya
  print('Loyaltee'.startsWith('Loy'));       // true
  print('abc'.padLeft(5, '0'));             // 00abc
  print('abc'.padRight(5, '0'));            // abc00

}

void main() {
  String? codigoReferido;

  // Sin verificar — error de compilación
  // print(codigoReferido.length);  // ERROR: codigoReferido puede ser null

  // Forma 1 — verificación explícita
  if (codigoReferido != null) {
    print(codigoReferido.length);  // aquí Dart sabe que codigoReferido es String
  }

  // Forma 2 — operador ?.
  print(codigoReferido?.length);  // null, sin excepción

  // Forma 3 — valor por defecto
  int longitud = codigoReferido?.length ?? 0;
  print(longitud);  // 0
}