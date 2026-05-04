fun main() {
    println("--- Cálculo de Beneficio para el Comercio ---")
    
    print("¿Es una cuenta Business Plus? (s/n): ")
    val esPlus = readLine()?.trim()?.lowercase() == "s"
    
    print("Monto de transacciones mensuales: ")
    val montoMensual = readLine()?.toDoubleOrNull() ?: 0.0
    
    if (esPlus) {
        val comisionLoyaltee = montoMensual * 0.02 // 2% de comisión
        println("Comisión reducida Loyaltee Plus: $${"%.2f".format(comisionLoyaltee)}")
    } else {
        val comisionEstandar = montoMensual * 0.05 // 5% de comisión
        println("Comisión Estándar: $${"%.2f".format(comisionEstandar)}")
    }
}

// Ejercicio: Clasificación de cupones
fun main() {
    println("Tipo de Cupón: ¿Es Físico o Digital? (f/d)")
    val esDigital = readLine()?.trim()?.lowercase() == "d"
    
    if (esDigital) {
        println("Enviar código QR al correo del cliente.")
    } else {
        println("Imprimir ticket de validación para el mostrador.")
    }
}