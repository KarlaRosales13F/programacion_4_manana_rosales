fun main() {
    // Valores inmutables
    val idCliente = "L-9982"
    val nombreEmpresa = "Café Central"
    
    // Valores mutables
    var puntosAcumulados = 150
    println("Puntos actuales: $puntosAcumulados")
    
    puntosAcumulados += 50 // Cliente realizó una compra
    println("Nuevos puntos tras compra: $puntosAcumulados")
    
    println("El cliente con ID $idCliente en $nombreEmpresa tiene $puntosAcumulados puntos.")
}