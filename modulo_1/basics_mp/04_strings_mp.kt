fun main() {
    val cliente = "Andrés"
    val nivel = "Oro"
    val puntos = 450
    
    // Plantilla de mensaje con String Multilínea
    val mensajeBienvenida = """
        |*** NOTIFICACIÓN LOYALTEE ***
        |Hola, ${cliente.uppercase()}!
        |Tu nivel actual es: $nivel
        |Puntos para canjear: $puntos
        |Estado de cuenta: ${if(puntos >= 500) "¡Tienes premios listos!" else "Te faltan ${500 - puntos} para tu próximo regalo"}
    """.trimMargin()
    
    println(mensajeBienvenida)
}