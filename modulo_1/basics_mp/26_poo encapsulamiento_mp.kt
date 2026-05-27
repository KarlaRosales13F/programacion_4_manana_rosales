class CuentaLoyaltee(titular: String, puntosIniciales: Double) {

    val titular: String = titular       // público — cualquiera puede leer

    private var puntos: Double = puntosIniciales  // privado — solo esta clase lo modifica

    internal val codigoCliente: String =        // internal — visible en el mismo módulo
        "LY${(100000..999999).random()}"

    protected open fun calcularBonus(): Double = puntos * 0.10  // protected — visible en subclases

    // Los puntos solo cambian a través de estos métodos — NUNCA directamente
    fun acumularPuntos(monto: Double) {
        require(monto > 0) { "El monto debe ser positivo" }
        puntos += monto
        println("Puntos acumulados: ${"%.2f".format(monto)} | Puntos totales: ${consultarPuntos()}")
    }

    fun canjearPuntos(monto: Double): Boolean {
        require(monto > 0) { "El monto debe ser positivo" }
        if (monto > puntos) {
            println("Puntos insuficientes para canjear")
            return false
        }
        puntos -= monto
        println("Puntos canjeados: ${"%.2f".format(monto)} | Puntos restantes: ${consultarPuntos()}")
        return true
    }

    fun consultarPuntos(): String = "${"%.2f".format(puntos)} pts"
}

fun main() {
    val cuenta = CuentaLoyaltee("Ana Garcia", 500.0)

    cuenta.acumularPuntos(300.0)    // Puntos acumulados: 300.00 | Puntos totales: 800.00 pts
    cuenta.canjearPuntos(150.0)     // Puntos canjeados: 150.00 | Puntos restantes: 650.00 pts
    cuenta.canjearPuntos(900.0)     // Puntos insuficientes para canjear

    println(cuenta.titular)          // Ana Garcia — acceso público permitido
    println(cuenta.consultarPuntos()) // 650.00 pts
    // cuenta.puntos = 999999.0       // ERROR — puntos es privado
}