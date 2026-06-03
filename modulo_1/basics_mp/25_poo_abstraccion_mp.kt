// El usuario de esta clase solo sabe QUÉ puede hacer con un Cliente Loyaltee
// No necesita saber cómo se calcula puntosConBonus ni cómo funciona elegibleCanje
class ClienteLoyaltee(
    val id:       Int,
    val nombre:   String,
    val puntos:   Double,
    private val compras: Int      // privado — el usuario no manipula las compras directamente
) {
    val puntosConBonus: Double    // interfaz pública — qué puede consultar
        get() = puntos * 1.10

    val elegibleCanje: Boolean
        get() = puntos > 100

    override fun toString() = "$nombre (${"%.2f".format(puntos)} pts)"
}

fun main() {
    val cliente = ClienteLoyaltee(1, "Maria Garcia", 850.0, 12)

    // El código externo usa la interfaz pública — no sabe el detalle interno
    println(cliente.elegibleCanje)   // true
    println(cliente.puntosConBonus)  // 935.0
    // cliente.compras = 0           // ERROR — privado, protegido por diseño
}