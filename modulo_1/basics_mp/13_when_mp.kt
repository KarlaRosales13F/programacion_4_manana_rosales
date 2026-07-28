fun main() {

println("Controles de Flujo When")

println("Seleccione una recompensa Loyalty:")
println("1. Descuento 10% en próxima compra")
println("2. Envío gratis")
println("3. Producto gratis")
println("4. Acceso a evento exclusivo")
println("5. Cashback a tu cuenta")
println("6. Upgrade de nivel de membresía")

println("Ingrese un número:")
val codigo = readLine()?.toIntOrNull() ?: 0

val recompensa = when(codigo){
    1 -> "Descuento 10% en próxima compra"
    2 -> "Envío gratis"
    3 -> "Producto gratis"
    4 -> "Acceso a evento exclusivo"
    5 -> "Cashback a tu cuenta"
    6 -> "Upgrade de nivel de membresía"
    else -> "Recompensa no registrada en el sistema Loyalty"
}

println("Recompensa seleccionada: $recompensa")

}