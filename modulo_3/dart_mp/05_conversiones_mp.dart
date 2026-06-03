void main() {
  // Conversiones numéricas
  int    puntos   = 850;
  double decimal  = puntos.toDouble();    // 850.0
  String texto    = puntos.toString();    // "850"

  // String → número
  int    num1 = int.parse('1200');        // 1200
  double num2 = double.parse('15.5');     // 15.5

  // Conversión segura (no lanza excepción)
  int?    num3 = int.tryParse('abc');     // null
  double? num4 = double.tryParse('99');   // 99.0

  // Verificar tipo con is (como en Kotlin)
  Object valor = 'Oro';
  if (valor is String) {
    print(valor.length);  // smart cast — ya es String
  }

  // Cast explícito con as
  Object obj = 'Loyaltee';
  String str = obj as String;

  // Comprobar nulabilidad
  String? nivelNullable = null;
  int longitud = nivelNullable?.length ?? 0;
  print(longitud);  // 0

  // Números especiales
  print(double.infinity);     // Infinity
  print(double.nan);          // NaN
  print(double.maxFinite);    // 1.7976931348623157e+308
}