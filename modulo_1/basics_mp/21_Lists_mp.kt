fun main() {
    println("Listas")
    val recompensas = listOf("descuento10", "envio gratis", "producto gratis", "envio gratis", "cashback")
    
    println("Size: ${recompensas.size}")
    println("Mostrar el elemento indice 0: ${recompensas[0]}")
    println("Mostrar el primer elemento: ${recompensas.first()}")
    println("Mostrar el ultimo elemento: ${recompensas.last()}")

    println("Mostrar el elemento indice 2: ${recompensas.get(2)}")
    println("Mostrar indice contenido elemento: ${recompensas.indexOf("envio gratis")}")
    println("Verificar existencia de elemento: ${recompensas.contains("producto gratis")}")
    println("Verificar existencia de un elemento: ${"envio gratis" in recompensas}")  

    println("sublista: ${recompensas.subList(1, 3)}")
    println("tomar primero 2 elementos: ${recompensas.take(2)}")
    println("suprimir tres primeros elementos: ${recompensas.drop(3)}")
    println("tomar los ultimos dos elementos: ${recompensas.takeLast(2)}")
    
    for (recompensa in recompensas) {
        println(recompensa)
    }
    
    
    println("Listas-Mutable")
    val niveles =mutableListOf("Bronce", "Plata","Oro","Platino")
    println(niveles)
    niveles.add("Diamante")
    println(niveles)
    niveles.add(0,"Basico")
    println(niveles)
    niveles.remove("Diamante")
    println(niveles)
    niveles[1]="Estandar"
    println(niveles)
    
    
    
    println("Array deque")
    val deque= ArrayDeque<Int>()
    println(deque)
    deque.addFirst(1)
    println(deque)
    deque.addLast(2)
    println(deque)
    deque.addLast(0)
    println(deque)
    deque.removeFirst()
    println(deque)
    deque.removeLast()

}