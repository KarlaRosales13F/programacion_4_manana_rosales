fun main() {
    println("Map Inmutable")
    val nivelesRecompensa = mapOf(
        "Bronce" to "Descuento 5%",
        "Plata" to "Descuento 10%",
        "Oro" to "Descuento 20% + Envio gratis",
        "Platino" to "Descuento 30% + Producto gratis"
    )
    
    println(nivelesRecompensa["Bronce"])
    println(nivelesRecompensa["Diamante"])
    println(nivelesRecompensa.getOrDefault("Bronce", "Desconocido"))
    println(nivelesRecompensa.getOrDefault("Diamante", "Desconocido"))
    println(nivelesRecompensa)
    println(nivelesRecompensa.keys)
    println(nivelesRecompensa.values)
    println(nivelesRecompensa.entries)
    for ((nivel, recompensa) in nivelesRecompensa){
        println("$nivel - $recompensa")
    }
    
    println("Map Mutable")
    val puntosClientes = mutableMapOf(
        "Garcia M" to 1200,
        "Zambrano L" to 3400,
        "Torres R" to 800,
        "Perez J" to 560
    )
    puntosClientes["Lopez A"]=950
    println(puntosClientes)
    puntosClientes["Garcia M"]= 1500
    println(puntosClientes)
    puntosClientes.remove("Perez J")
    println(puntosClientes)
    puntosClientes.getOrPut("Mendoza C"){200}
    println(puntosClientes)
    puntosClientes.getOrPut("Torres R"){200}
    println(puntosClientes)
    
 }