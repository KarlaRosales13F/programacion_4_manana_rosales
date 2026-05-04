fun main() {
    println("--- Sistema de Canje Loyaltee ---")
    print("Ingrese la cantidad de puntos a usar: ")
    
    val puntosACanjear = readLine()?.toIntOrNull() ?: 0
    
    if (puntosACanjear >= 1000) {
        println("¡Felicidades! Puedes canjear esto por una Tarjeta de Regalo.")
    }
    
    if (puntosACanjear > 0 && puntosACanjear < 1000) {
        println("Puntos insuficientes para premios mayores. Prueba con productos seleccionados.")
    }
}