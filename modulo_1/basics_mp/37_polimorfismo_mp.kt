// La interfaz define el contrato — QUÉ puede hacer
// Las implementaciones definen el CÓMO
interface Canjeable {
    fun procesar(puntos: Double): Boolean
    val nombre: String
}

class DescuentoDirecto(val porcentaje: Double) : Canjeable {
    override val nombre = "Descuento directo"
    override fun procesar(puntos: Double): Boolean {
        println("🏷️ Aplicando ${"%.2f".format(porcentaje)}% de descuento con $puntos puntos")
        return true
    }
}

class EnvioGratis(val direccion: String) : Canjeable {
    override val nombre = "Envio gratis"
    override fun procesar(puntos: Double): Boolean {
        println("🚚 Envio gratuito a $direccion con $puntos puntos")
        return true
    }
}

class ProductoGratis : Canjeable {
    override val nombre = "Producto gratis"
    override fun procesar(puntos: Double): Boolean {
        println("🎁 Producto gratis canjeado con ${"%.2f".format(puntos)} puntos")
        return true
    }
}

// Esta función no sabe ni le importa qué tipo de canje es
// Solo sabe que recibe algo que implementa Canjeable — POLIMORFISMO
fun canjear(puntos: Double, tipoCanje: Canjeable) {
    println("Procesando canje con ${tipoCanje.nombre}...")
    val exito = tipoCanje.procesar(puntos)
    println(if (exito) "✅ Canje exitoso" else "❌ Canje fallido")
}

fun main() {
    val canjes: List<Canjeable> = listOf(
        DescuentoDirecto(15.0),
        EnvioGratis("Av. Loyaltee 123"),
        ProductoGratis()
    )

    // Misma función — comportamiento distinto según el tipo
    canjes.forEach { canjear(500.0, it) }

    
}