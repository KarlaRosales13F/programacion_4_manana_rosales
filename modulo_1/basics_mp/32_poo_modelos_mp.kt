data class ClienteLoyaltee(
    val id:        Int,
    val nombre:    String,
    val puntos:    Double,
    val nivel:     String,
    val activo:    Boolean = true
)

fun main() {
    val c1 = ClienteLoyaltee(1, "Maria Garcia", 850.0, "Oro")
    val c2 = ClienteLoyaltee(1, "Maria Garcia", 850.0, "Oro")
    val c3 = ClienteLoyaltee(2, "Luis Torres",  1500.0, "Platino")

    // toString() automático
    println(c1)  // ClienteLoyaltee(id=1, nombre=Maria Garcia, ...)

    // equals() por valor
    println(c1 == c2)   // true
    println(c1 == c3)   // false

    // copy() — nuevo objeto con cambios puntuales
    val ascendido   = c1.copy(nivel = "Platino")
    val inactivo    = c1.copy(activo = false)

    // Desestructuración
    val (id, nombre, puntos) = c1
    println("$id: $nombre — $puntos pts")

    // En bucles
    listOf(c1, c3).forEach { (id2, nombre2, puntos2) ->
        println("[$id2] $nombre2: $puntos2 pts")
    }
}