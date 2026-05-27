fun main() {
    println("Controles de Flujo Iteraciones, Ciclos repetitivos - Ciclo Repeat")
    println("Cuantas compras registrar para calcular puntos promedio Loyaltee")
    
    val registros = readLine()?.toIntOrNull() ?: 0
    var totalPuntos = 0

    repeat(registros) { i ->
        println("Compra ${i + 1} (monto en dolares)")
        val monto = readLine()?.toIntOrNull() ?: 0
        totalPuntos += monto * 10 // 10 puntos por cada dolar gastado
    }

    if (registros > 0) {
        val promedio = totalPuntos / registros
        println("Puntos Loyaltee promedio por compra: $promedio pts")
        println("Clasificacion: ${
            when {
                promedio < 500 -> "Bronce"
                promedio <= 2000 -> "Oro"
                else -> "Platino"
            }
        }")
    } else {
        println("No se ingresaron compras validas.")
    }
}

//ejercicio en clase

fun main() {

    var totalGastado = 0
    var contador = 0

    repeat(6) { 
        println("Ingresa el monto de la compra:")
        val monto = readLine()?.toDoubleOrNull() ?: 0.0
        totalGastado += monto.toInt()

        if (monto >= 50.0) {
            contador++
        }
    }

    val promedio = totalGastado / 6
    println("Gasto promedio por compra: $promedio $")

    if (contador > 0) {
        println("Cliente frecuente con compras de alto valor")
    } else {
        println("Cliente sin compras de alto valor sostenidas")
    }
}