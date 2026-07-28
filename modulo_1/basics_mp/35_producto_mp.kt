data class NivelMembresia(val id: Int, val nombre: String)

data class Recompensa(
    val id:        Int,
    val nombre:    String,
    val puntosRequeridos: Double,
    val stock:     Int,
    val nivel:     NivelMembresia,
    val activo:    Boolean = true
) {
    // ABSTRACCIÓN: el usuario consulta disponible sin saber la lógica
    val disponible: Boolean get() = activo && stock > 0
    val puntosConBonus: Double get() = puntosRequeridos * 0.90

    // Devuelve una copia — inmutabilidad como forma de encapsulamiento
    fun aplicarDescuento(porcentaje: Double): Recompensa {
        require(porcentaje in 0.0..100.0) { "Descuento debe ser entre 0 y 100" }
        return copy(puntosRequeridos = puntosRequeridos * (1 - porcentaje / 100))
    }
}

// ENCAPSULAMIENTO: el estado del catalogo es privado y mutable internamente
object CatalogoRecompensas {
    private val niveles = mutableListOf(
        NivelMembresia(1, "Bronce"),
        NivelMembresia(2, "Oro"),
        NivelMembresia(3, "Platino")
    )
    private val recompensas   = mutableListOf<Recompensa>()
    private var siguienteId = 1

    fun agregarRecompensa(nombre: String, puntosRequeridos: Double, stock: Int, nivelId: Int): Recompensa? {
        val nivel = niveles.find { it.id == nivelId } ?: return null
        val recompensa  = Recompensa(siguienteId++, nombre, puntosRequeridos, stock, nivel)
        recompensas.add(recompensa)
        return recompensa
    }

    // ABSTRACCIÓN: interfaz pública limpia — solo lectura de listas
    fun listar(): List<Recompensa>              = recompensas.toList()
    fun disponibles(): List<Recompensa>         = recompensas.filter { it.disponible }
    fun porNivel(id: Int): List<Recompensa>     = recompensas.filter { it.nivel.id == id }
    fun buscar(query: String): List<Recompensa> =
        recompensas.filter { it.nombre.contains(query, ignoreCase = true) }
}

fun main() {
    CatalogoRecompensas.agregarRecompensa("Descuento 10%",    200.0, 15, 1)
    CatalogoRecompensas.agregarRecompensa("Envio gratis",     500.0,  0, 1)
    CatalogoRecompensas.agregarRecompensa("Producto gratis", 1000.0,  5, 2)
    CatalogoRecompensas.agregarRecompensa("Acceso VIP",      3000.0,  8, 3)

    println("=== Todas las recompensas ===")
    CatalogoRecompensas.listar().forEach { r ->
        val estado = if (r.disponible) "✅" else "❌"
        println("$estado ${r.nombre} — ${"%.2f".format(r.puntosConBonus)} (con bonus)")
    }

    println("\n=== Disponibles con 10% descuento ===")
    CatalogoRecompensas.disponibles()
        .map { it.aplicarDescuento(10.0) }
        .forEach { println("  ${it.nombre}: ${"%.2f".format(it.puntosRequeridos)}") }

    println("=== Todas las recompensas ===")
    for (r in CatalogoRecompensas.listar()){
            println(" ${r.nombre} ${r.puntosRequeridos}")
        
}