fun main() {
    val nombre= "Cliente"
    val apellido= "Frecuente"
    val edad= 28
    //variable simple
    println("Hola $nombre, bienvenido a Loyaltee")
    //Expresion
    println("Cliente Loyaltee :${nombre.uppercase()} ${apellido.uppercase()}")
    val nombreCompleto = "Cliente Loyaltee :${nombre.uppercase()} ${apellido.uppercase()}"
    println("Edad en el programa : ${edad+6} años")
    
    //String Multilinea
    
    val tarjeta = """
    	|Cliente: $nombre $apellido
        |Años en Loyaltee: $edad
        |Acceso a beneficios: ${if(edad>018) "Permitido" else "Denegado"}
        
   """.trimMargin()
   println(tarjeta)
   
}