fun main() {
println("Controles de Flujo When")
println("Escriba codigo")
val codigo =readLine()?.toIntOrNull()?:0
val recompensa = when(codigo){
    1->"Descuento 10% en proxima compra"
    2 ->"Envio gratis"
    3->"Producto gratis"
    4->"Acceso a evento exclusivo"
    5->"Cashback a tu cuenta"
    6->"Upgrade de nivel de membresia"
    else ->"Recompensa no registrada en el sistema Loyaltee"
}
println("Recompensa: $recompensa")

}

//ejemplo

fun main() {
println("Controles de Flujo When")
println("Ingrese el numero para seleccionar su tipo de canjes Loyaltee")
val codigo =readLine()?.toIntOrNull()?:0
val canje = when(codigo){
    1->"Puntos por compra | x2 puntos"
    2 ->"Referido nuevo cliente | 500 puntos"
    3->"Cumpleanos del cliente | x3 puntos"
    4->"Resena verificada | 200 puntos"
    5->"Primera compra del mes | 300 puntos"
    else ->"Tipo de canje no registrado en el sistema"
}
println("Tipo de canje: $canje")

}