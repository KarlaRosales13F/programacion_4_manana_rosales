fun main() {
    println("Controles de Flujo When - con condiciones arbitrarias")
    
    print("Puntos acumulados del cliente: ")
    val puntosCliente = readLine()?.toIntOrNull() ?: 0
    
    print("¿Tiene membresia activa? (s/n): ")
    val tieneMembresia = readLine()?.trim()?.lowercase() == "s"
    
    val nivelMembresia = if (tieneMembresia) {
        println("Nivel de membresia (BRONCE/ORO/PLATINO):")
        readLine()?.trim()?.uppercase() ?: ""
    } else ""

    val descuento = when {
        !tieneMembresia && puntosCliente < 100 -> 0.0
        !tieneMembresia && puntosCliente >= 1000 -> 5.0
        !tieneMembresia -> 2.0
        nivelMembresia == "BRONCE" -> 10.0
        nivelMembresia == "ORO" -> 20.0
        nivelMembresia == "PLATINO" -> 30.0
        else -> 5.0
    }

    println("Descuento Loyaltee final: $${"%.2f".format(descuento)}%")
}