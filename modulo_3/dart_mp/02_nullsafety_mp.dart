void main() {
  // Tipo no-nullable — NUNCA puede ser null
  String cliente = 'Ana';
  // cliente = null;       // ERROR de compilación

  // Tipo nullable — puede ser null (añadir ?)
  String? nivel = null;   // OK
  nivel = 'Oro';          // OK

  // Operadores de null safety
  String? codigoReferido;

  // ?. — safe call (igual que en Kotlin)
  print(codigoReferido?.length);      // null — no lanza excepción

  // ?? — operador Elvis (igual que ?: en Kotlin)
  String resultado = codigoReferido ?? 'Sin codigo referido';
  print(resultado);           // Sin codigo referido

  // ! — non-null assertion (igual que !! en Kotlin) — úsalo con precaución
  String codigoSeguro = codigoReferido!;  // lanza si codigoReferido es null

  // Null check con if
  if (nivel != null) {
    print(nivel.length);   // smart cast — ya es String aquí
  }

  // late — inicialización diferida (como lateinit en Kotlin)
  late String tokenCliente;
  tokenCliente = 'LY-abc123';   // debe asignarse antes de usar
  print(tokenCliente);
}