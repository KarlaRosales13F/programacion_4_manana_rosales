fun main() {
    val tieneAppInstalada = true
    val cuentaVerificada = false
    val esPrimerCanje = true
    
    // Lógica para aplicar promoción especial
    val aplicaDescuentoExtra = tieneAppInstalada && cuentaVerificada
    println("¿Aplica a descuento por App Verificada?: $aplicaDescuentoExtra")
    
    val aplicaBienvenida = esPrimerCanje || !cuentaVerificada
    println("¿Mostrar mensaje de bienvenida?: $aplicaBienvenida")
    
    println("¿Bloquear cuenta por inactividad?: ${!tieneAppInstalada}")
}