void main() {
  // var — tipo inferido (como val en Kotlin)
  var cliente  = 'Ana';         // String
  var puntos   = 850;           // int
  var descuento = 15.5;         // double
  var activo   = true;          // bool

  // Tipo explícito
  String nivel    = 'Oro';
  int    canjes   = 5;
  double bonus    = 1.10;
  bool   visible  = false;

  // final — no se puede reasignar (como val en Kotlin)
  final programa = 'Loyaltee';
  // programa = 'OtroPrograma';  // ERROR — final no se puede reasignar

  // const — constante en tiempo de compilación (como const en Kotlin)
  const puntosMinimos = 100;
  const tasaBonus     = 1.10;

  // Diferencia clave: final vs const
  final ahora  = DateTime.now();   // OK — se evalúa en runtime
  // const ahora = DateTime.now(); // ERROR — DateTime.now() no es constante de compilación

  print('$cliente $nivel tiene $puntos puntos en $programa');
  
  // var — mutable, tipo inferido
var contador = 0;
contador = 1;          // OK

// final — inmutable referencia, evaluado en runtime
final recompensas = ['Descuento 10%', 'Envio gratis', 'Producto gratis'];
recompensas.add('Acceso VIP');  // OK — la referencia es final, no el contenido
// recompensas = ['Cashback'];  // ERROR — no se puede reasignar la referencia

// const — inmutable profundo, evaluado en compilación
const niveles = ['Bronce', 'Oro'];
// niveles.add('Platino'); // ERROR — lista const es completamente inmutable
}