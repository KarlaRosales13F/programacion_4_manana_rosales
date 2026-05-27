fun main() {
    println("Controles de Flujo Iteraciones, Ciclos repetitivos - Ciclo For")
    print("For con rango")
    for( i in 1..10){
        println(" Nivel $i  = ${100*i} puntos requeridos")
    }
    
    println("For con until")
    for(i in 1 until 5){
        println(i)
    }
    
    println("For con pasos")
    for (i in 1..10 step 3){
        println(i)
    }
    
    println("For descendente")
    for( i in 10 downTo 1){
        println(i)
    }
    
    println("For con listas")
    val recompensas = listOf("Descuento", "Envio gratis", "Producto gratis")
    for(recompensa in recompensas){
        println(recompensa)
    }
    
    println("For")
    for((valor, index) in recompensas.withIndex()){
        println("$index->$valor")
    }
    
    println("For con break")
    for ( i in 1..10){
        if(1==5){
            break;
        }
    }
    
    println("For con continue")
    for( i in 1..10){
        if(i==3){
            continue;
        }
        println("item: $i")
    }
    
    println("For con continue")
    for( i in 1..10){
     if(i==3) continue;
     if(i==7) break;
     println("item $i")
    }
    
    val clientes = listOf(
    Triple("Garcia, M", 1250.0, 8),
    Triple("Zambrano, L", 3400.0, 5),
    Triple("Torres. R", 750.0, 12),
    )
    for ((posicion, cliente) in clientes.withIndex()){
        val (nombre, puntos, compras) = cliente
        val nivelPuntos = if(puntos >= 1000.0) "Oro" else "Bronce"
        val frecuencia = if(compras < 6) "Baja" else "Alta"
        println("Cliente $posicion - $nombre - Puntos: $puntos $nivelPuntos - Compras: $compras $frecuencia")
    }
}