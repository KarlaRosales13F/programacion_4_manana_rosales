abstract class BeneficioLoyaltee(val nombre: String) {
    // abstract — las subclases DEBEN implementar esto (herencia forzada)
    abstract val puntosRequeridos: Double
    abstract val vigenciaDias: Double
    abstract fun descripcion(): String

    // concreto — disponible en todas las subclases (reutilización)
    fun comparar(otro: BeneficioLoyaltee): String = when {
        puntosRequeridos > otro.puntosRequeridos -> "$nombre requiere más puntos que ${otro.nombre}"
        puntosRequeridos < otro.puntosRequeridos -> "$nombre requiere menos puntos que ${otro.nombre}"
        else             -> "$nombre y ${otro.nombre} requieren los mismos puntos"
    }

    // Polimorfismo: toString usa puntosRequeridos y descripcion que son polimórficas
    override fun toString() = "${descripcion()} | Puntos: ${"%.2f".format(puntosRequeridos)}"
}

class DescuentoEspecial(val porcentaje: Double) : BeneficioLoyaltee("Descuento Especial") {
    override val puntosRequeridos: Double get() = porcentaje * 10
    override val vigenciaDias:     Double get() = 30.0
    override fun descripcion() = "Descuento especial de $porcentaje%"
}

class RecompensaProducto(val categoria: String, val valorMaximo: Double) : BeneficioLoyaltee("Recompensa Producto") {
    override val puntosRequeridos: Double get() = valorMaximo * 2
    override val vigenciaDias:     Double get() = valorMaximo / 10
    override fun descripcion() = "Producto gratis de categoria $categoria hasta ${"%.2f".format(valorMaximo)}"
}

class AccesoEvento(val tipoEvento: String) : BeneficioLoyaltee("Acceso Evento") {
    override val puntosRequeridos: Double get() = 500.0
    override val vigenciaDias:     Double get() = 7.0
    override fun descripcion() = "Acceso exclusivo a evento $tipoEvento"
}

fun main() {
    // POLIMORFISMO: la lista acepta cualquier BeneficioLoyaltee
    val beneficios: List<BeneficioLoyaltee> = listOf(
        DescuentoEspecial(15.0),
        RecompensaProducto("Electronica", 80.0),
        AccesoEvento("Lanzamiento VIP")
    )

    beneficios.forEach { println(it) }  // toString polimórfico

    val mayor = beneficios.maxByOrNull { it.puntosRequeridos }
    println("\nBeneficio con más puntos requeridos: ${mayor?.nombre}")

    println(beneficios[0].comparar(beneficios[1]))
}