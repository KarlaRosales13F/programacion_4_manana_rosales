fun main() {
    println("Loyaltee - Catálogo de Premios")
    println("Ingrese el código del premio (1-5):")
    val codigo = readLine()?.toIntOrNull() ?: 0
    
    val premio = when(codigo) {
        1 -> "Cupón 2x1 en Bebidas"
        2 -> "Descuento del 15% en Cena"
        3 -> "Entrada gratis a evento VIP"
        4 -> "Kit de productos de la casa"
        5 -> "Gift Card de $20"
        else -> "Código de premio no válido"
    }
    println("Premio seleccionado: $premio")
}