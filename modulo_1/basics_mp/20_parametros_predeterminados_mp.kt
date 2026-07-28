fun main() {
    println("Funciones-Parametros por defecto")
    println(crearCliente("Alejandro", 25, "Platino", true))
    println(crearCliente("Ana Sofia"))
    println(crearCliente("Valentina", 24))
    println(crearCliente("Olivia", 25, "Oro"))
    
    //Argumentos nombrados
    println(crearCliente(edad=30, nombre="Yamilet", activo=false))
    
}

fun crearCliente(
    nombre: String,
    edad: Int=18,
    nivel: String ="Bronce",
    activo: Boolean = true
): String {
    return "ClienteLoyaltee[$nombre, edad=$edad, nivel=$nivel, activo =$activo]"
}