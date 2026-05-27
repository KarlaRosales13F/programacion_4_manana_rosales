// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
    println("Funciones")
    val bienvenida = bienvenidaLoyaltee()
    println(bienvenida)
    val puntos = sumarPuntos(200, 150)
    println(puntos)
    println(canjearPuntosTipoExpresion(500,100))
    println(canjearPuntosTipoInferido(500,100))
    bienvenidaCliente("Pedro")
}

fun bienvenidaLoyaltee(): String {
    return "Bienvenido al programa de fidelizacion Loyaltee"
}

fun sumarPuntos(a: Int, b: Int): Int {
    return a + b
}

//tipo expresion
fun canjearPuntosTipoExpresion(a: Int, b:Int): Int = a - b
fun canjearPuntosTipoInferido(a: Int, b:Int) = a - b


fun bienvenidaCliente(nombre: String){
    println("Hola $nombre, bienvenido a Loyaltee")
}