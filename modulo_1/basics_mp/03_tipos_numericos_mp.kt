fun main() {
    println("Métricas del Programa Loyaltee")
    
    // Tipos de datos numéricos
    val cuponesDisponibles: Byte = 5
    val clientesActivos: Short = 1200
    val totalTransacciones: Long = 1_500_000L
    
    // Decimales para cashback o saldos
    val porcentajeCashback: Float = 0.05f
    val saldoMonedero: Double = 125.75
    
    // Verificación de tipos inferidos
    val plan = "Premium"
    println("Plan de suscripción: $plan")
    println("Tipo de dato de 'plan': ${plan::class.simpleName}")
}