class PuntosLoyaltee(puntos: Double) {

    // ENCAPSULAMIENTO: el setter valida antes de asignar
    var puntos: Double = puntos
        set(value) {
            require(value >= 0.0) { "Los puntos no pueden ser negativos" }
            field = value  // 'field' es el backing field
        }

    // ABSTRACCIÓN: el usuario consulta el nivel sin saber la lógica interna
    val nivelMembresia: String
        get() = when {
            puntos < 100  -> "Sin nivel"
            puntos < 500  -> "Bronce"
            puntos < 1000 -> "Plata"
            puntos < 3000 -> "Oro"
            else          -> "Platino"
        }

    val puntosConBonus: Double
        get() = puntos * 1.10

    val descripcion: String
        get() = when {
            puntos < 100  -> "Cliente nuevo"
            puntos < 500  -> "Cliente regular"
            puntos < 1000 -> "Cliente frecuente"
            puntos < 3000 -> "Cliente fiel"
            else          -> "Cliente VIP Loyaltee"
        }
}

fun main() {
    val cuenta = PuntosLoyaltee(800.0)
    println("${cuenta.puntos} pts = ${cuenta.puntosConBonus} pts con bonus = nivel ${cuenta.nivelMembresia}")
    println(cuenta.descripcion)  // Cliente frecuente

    cuenta.puntos = 3500.0
    println("${cuenta.puntos} pts → ${cuenta.descripcion}")  // Cliente VIP Loyaltee

    // cuenta.puntos = -100.0  // IllegalArgumentException
}