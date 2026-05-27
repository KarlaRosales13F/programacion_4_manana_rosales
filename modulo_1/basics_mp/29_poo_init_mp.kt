class ClienteLoyaltee(val nombre: String, val email: String) {
    val nombreNormalizado: String
    val dominioEmail: String

    init {
        // Encapsulamiento en acción: validamos antes de construir
        require(nombre.isNotBlank()) { "El nombre no puede estar vacío" }
        require(email.contains("@")) { "Email inválido: $email" }

        nombreNormalizado = nombre.trim().lowercase()
        dominioEmail      = email.substringAfter("@")
    }
}

fun main() {
    val u = ClienteLoyaltee("  Ana Garcia  ", "ana@loyaltee.dev")
    println(u.nombreNormalizado)  // ana garcia
    println(u.dominioEmail)       // loyaltee.dev

    // ClienteLoyaltee("", "invalido")   // IllegalArgumentException — require falla
}