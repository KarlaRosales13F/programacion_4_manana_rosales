fun main() {
    println("Utilidades List")
    println("map")
    val puntos = listOf(100,200,300,400,500,600,700,800,900,1000)
    println(puntos)
    val puntosDobles = puntos.map{it*2}
    println(puntosDobles)
    val puntosTexto= puntos.map{"Puntos $it"}
    println(puntosTexto)
    
    println("filter")
    val pares=puntos.filter{it % 2 == 0}
    println(pares)
    val mayores500=puntos.filter{it > 500}
    println(mayores500)
    val paresYMayores500=puntos.filter{it % 2 == 0 && it > 500}
    println(paresYMayores500)
    val impares=puntos.filterNot{it % 2 == 0}
    println(impares)
    
    
    val mezcla= listOf(100, "Bronce", 200, "Oro", true, 500)
    val soloStrings = mezcla.filterIsInstance<String>()
    println(soloStrings)
    
    
    println("reduce")
    val puntosReduce = listOf(100,200,300,400,500)
    val suma = puntosReduce.reduce {acc, n -> acc + n}
    println(suma)
    val producto = puntosReduce.reduce {acc, n -> acc * n}
    println(producto)
    println("fold")
    val sumaFold = puntosReduce.fold(100) {acc, n -> acc + n}
    println(sumaFold)
    val productoFold = puntosReduce.fold(100) {acc, n -> acc * n}
    println(productoFold)
    
    println("Ordenacion")
    println("Ascendente : ${puntos.sorted()}")
    println("Descendente : ${puntos.sortedDescending()}")
    println("Sorter by : ${puntos.sortedBy{-it}}")
    println("Agregacion")
    println("Sumar    : ${puntos.sum()}")
    println("Promedio : ${puntos.average()}")
    println("Minimo   : ${puntos.minOrNull()}") // En versiones modernas se usa minOrNull
    println("Maximo   : ${puntos.maxOrNull()}") // En versiones modernas se usa maxOrNull
    println("Contar   : ${puntos.count { it > 400 }}")
    println("Busqueda")
    println("Buscar        : ${puntos.find { it > 400 }}")
    println("Buscar ultimo : ${puntos.findLast { it > 400 }}")
    println("Buscar any    : ${puntos.any { it > 400 }}")
    println("Buscar all    : ${puntos.all { it > 400 }}")
    println("Buscar none : ${puntos.none {it > 1000}}")
    println("Buscar none : ${puntos.none {it > 1000}}")


 }