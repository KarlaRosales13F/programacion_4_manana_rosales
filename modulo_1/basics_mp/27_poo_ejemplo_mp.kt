// El constructor primario integra la declaración de propiedades
class Cliente(val nombre: String, val puntos: Int)

// Con cuerpo adicional
class Cliente2(val nombre: String, val puntos: Int) {
    fun presentarse() = "Soy $nombre y tengo $puntos puntos Loyaltee"
    fun esClienteVip() = puntos >= 1000
}

fun main() {
    val c = Cliente("Ana", 850)
    println(c.nombre)   // Ana
    println(c.puntos)   // 850

    val c2 = Cliente2("Luis", 450)
    println(c2.presentarse())     // Soy Luis y tengo 450 puntos Loyaltee
    println(c2.esClienteVip())    // false
}