class RecompensaInmutable(val codigo: String, val descripcion: String)   // solo lectura

class AcumuladorPuntos(var puntos: Int = 0) {                  // lectura y escritura
    fun sumar(cantidad: Int) { puntos += cantidad }
    fun reiniciar()          { puntos = 0 }
}

// Sin val/var — parámetro del constructor, NO propiedad
// Solo accesible dentro del bloque init
class ClienteTemporal(nombre: String) {
    val nombreUpper = nombre.uppercase()
    // nombre no existe fuera de aquí
}