fun main() {
    var puntosBase = 100
    val multiplicadorPromo = 2
    
    println("Puntos base: $puntosBase")
    
    // Operadores de asignación compuesta
    puntosBase *= multiplicadorPromo // Se duplican por temporada
    println("Puntos después de promoción x2: $puntosBase")
    
    puntosBase += 10 // Bonus por completar perfil
    println("Puntos finales: $puntosBase")
    
    // Comparaciones
    val metaPremios = 500
    println("¿Alcanzó la meta de premios?: ${puntosBase >= metaPremios}")
}