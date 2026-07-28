interface Serializable {
    val id: String                    // abstracta — debe implementarse
    fun serializar(): String          // abstracta — debe implementarse
    val version: Int get() = 1        // con default — puede sobreescribirse
}

interface Validable {
    val errores: List<String>
    val esValido: Boolean get() = errores.isEmpty()

    fun validar(): Boolean
    fun imprimirErrores() {                // implementación por defecto
        if (errores.isEmpty()) println("Sin errores")
        else errores.forEach { println("  ❌ $it") }
    }
}

// POLIMORFISMO: CanjeRecompensa puede usarse donde se espere Serializable O Validable
data class CanjeRecompensa(
    override val id: String,
    val cliente:     String,
    val recompensas: List<String>,
    val totalPuntos: Double
) : Serializable, Validable {

    override fun serializar() =
        "$id|$cliente|${recompensas.joinToString(",")}|$totalPuntos"

    override val errores: List<String> get() = buildList {
        if (cliente.isBlank()) add("El cliente no puede estar vacío")
        if (recompensas.isEmpty())   add("El canje debe tener al menos una recompensa")
        if (totalPuntos <= 0)        add("El total de puntos debe ser mayor que cero")
    }

    override fun validar() = esValido
}

fun main() {
    val canje1 = CanjeRecompensa("C001", "Ana", listOf("Descuento 10%", "Envio gratis"), 700.0)
    val canje2 = CanjeRecompensa("C002", "",    emptyList(),                             -5.0)

    // Polimorfismo por interfaz
    fun procesarSerializable(s: Serializable) = println("→ ${s.serializar()}")
    fun procesarValidable(v: Validable) {
        println("Válido: ${v.esValido}")
        v.imprimirErrores()
    }

    procesarSerializable(canje1)   // → C001|Ana|Descuento 10%,Envio gratis|700.0
    procesarValidable(canje1)      // Válido: true / Sin errores
    procesarValidable(canje2)      // Válido: false / ❌ ...
}