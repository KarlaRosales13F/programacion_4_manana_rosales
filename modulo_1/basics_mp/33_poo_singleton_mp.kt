object ConfiguracionLoyaltee {
    val host:    String = "api.loyaltee.com"
    val puerto:  Int    = 443
    private val apiKey: String = "sk-loyaltee-secreto-123"   // privado — nunca expuesto

    fun baseUrl() = "https://$host:$puerto"
    fun headers() = mapOf("Authorization" to "Bearer $apiKey")
}

class ClienteLoyaltee private constructor(val id: Int, val nombre: String) {
    companion object {
        private var contadorId = 0

        // Factory function — encapsulamiento del constructor
        fun crear(nombre: String, email: String): ClienteLoyaltee? {
            if (nombre.isBlank() || !email.contains("@")) return null
            return ClienteLoyaltee(++contadorId, nombre.trim())
        }

        const val NIVEL_DEFECTO = "Bronce"
    }
}

fun main() {
    println(ConfiguracionLoyaltee.baseUrl())  // https://api.loyaltee.com:443
    // ConfiguracionLoyaltee.apiKey            // ERROR — privado

    val u = ClienteLoyaltee.crear("Ana", "ana@loyaltee.com")
    println(u)  // ClienteLoyaltee(id=1, nombre=Ana)
}