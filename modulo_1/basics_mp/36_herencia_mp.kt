// Sin open — no se puede heredar (protección por defecto)
class Cliente(val nombre: String)
// class ClienteVip : Cliente("Ana")  // ERROR — Cliente es final

// Con open — la jerarquía está diseñada para ello
open class Cliente(val nombre: String, val nivel: String) {
    // open — la subclase PUEDE sobreescribir
    open fun mostrarBeneficios() = println("$nombre tiene nivel: $nivel")
    open fun descripcion() = "Soy $nombre"

    // Sin open — la subclase NO puede sobreescribir
    fun consultarPuntos() = println("$nombre consulta sus puntos")
}

// HERENCIA: ClienteVip reutiliza todo de Cliente y especializa mostrarBeneficios
class ClienteVip(nombre: String) : Cliente(nombre, "Platino") {
    override fun mostrarBeneficios() {
        super.mostrarBeneficios()              // reutiliza la implementación del padre
        println("(acceso a sala VIP Loyaltee)")   // añade comportamiento propio
    }
    override fun descripcion() = "${super.descripcion()}, un cliente VIP"
}

class ClienteNuevo(nombre: String, val referido: Boolean) : Cliente(nombre, "Bronce") {
    override fun descripcion() =
        "${super.descripcion()}, un cliente nuevo ${if (referido) "por referido" else "directo"}"
}

fun main() {
    val vip = ClienteVip("Ana Garcia")
    vip.mostrarBeneficios()
    // Ana Garcia tiene nivel: Platino
    // (acceso a sala VIP Loyaltee)

    val nuevo = ClienteNuevo("Luis Torres", true)
    println(nuevo.descripcion())  // Soy Luis Torres, un cliente nuevo por referido

    // Herencia — ClienteVip y ClienteNuevo tienen todo lo de Cliente más lo propio
    vip.consultarPuntos()  // Ana Garcia consulta sus puntos — heredado de Cliente
}