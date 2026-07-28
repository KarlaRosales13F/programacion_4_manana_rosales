// ABSTRACCIÓN: sealed class define los tipos posibles de notificación Loyaltee
sealed class NotificacionLoyaltee(val titulo: String, val mensaje: String) {
    abstract fun formatear(): String  // cada tipo formatea de forma distinta

    data class Email(
        val destinatario: String,
        val asunto:       String,
        val cuerpo:       String
    ) : NotificacionLoyaltee(asunto, cuerpo) {
        override fun formatear() =
            "📧 Email → $destinatario\n   Asunto: $titulo\n   ${mensaje.take(50)}..."
    }

    data class Push(val dispositivo: String, val icono: String = "🔔")
        : NotificacionLoyaltee("Push", "") {
        override fun formatear() = "$icono Push → $dispositivo: $titulo"
    }

    data class Sms(val telefono: String, val texto: String)
        : NotificacionLoyaltee("SMS", texto) {
        override fun formatear() = "📱 SMS → $telefono: ${texto.take(160)}"
    }

    object Silenciosa : NotificacionLoyaltee("", "") {
        override fun formatear() = "🔕 Notificación silenciosa"
    }
}

// ABSTRACCIÓN + POLIMORFISMO: interfaz con contrato genérico
interface EnviadorNotificacion {
    val nombre: String
    fun enviar(notificacion: NotificacionLoyaltee): Boolean
}

// HERENCIA: implementaciones concretas del mismo contrato
class ServicioEmail : EnviadorNotificacion {
    override val nombre = "Email"
    override fun enviar(n: NotificacionLoyaltee): Boolean {
        if (n !is NotificacionLoyaltee.Email) return false
        println("  [EMAIL] → ${n.destinatario}")
        return true
    }
}

class ServicioPush : EnviadorNotificacion {
    override val nombre = "Push"
    override fun enviar(n: NotificacionLoyaltee): Boolean {
        if (n !is NotificacionLoyaltee.Push) return false
        println("  [PUSH] → ${n.dispositivo}")
        return true
    }
}

// ENCAPSULAMIENTO: la lista de servicios es privada
class Dispatcher(private val servicios: List<EnviadorNotificacion>) {

    fun enviar(notificacion: NotificacionLoyaltee) {
        println(notificacion.formatear())  // POLIMORFISMO: cada tipo formatea distinto
        val exito = servicios.any { it.enviar(notificacion) }
        if (!exito) println("  ⚠️ Sin servicio disponible")
        println()
    }
}

fun main() {
    val dispatcher = Dispatcher(listOf(ServicioEmail(), ServicioPush()))

    listOf(
        NotificacionLoyaltee.Email("ana@loyaltee.com", "Bienvenida a Loyaltee", "Gracias por registrarte en el programa."),
        NotificacionLoyaltee.Push("iPhone-Ana"),
        NotificacionLoyaltee.Sms("+34600000000", "Tus puntos Loyaltee: 850 pts"),
        NotificacionLoyaltee.Silenciosa
    ).forEach { dispatcher.enviar(it) }
}