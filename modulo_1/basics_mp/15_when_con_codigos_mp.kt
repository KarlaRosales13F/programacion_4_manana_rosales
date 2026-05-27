fun main() {
    println("Controles de Flujo When -  con bloque de codigos")
    
    println("Nombre del Cliente")
    val nombreCliente = readLine()?.trim()?.lowercase()?:"Sin identificacion"
    println("Estado de la cuenta (SUSPENDIDO/VENCIDO/ACTIVO/NUEVO)")
    val estado = readLine()?.trim()?.uppercase()?:""
    
    when(estado){
        "SUSPENDIDO" ->{
            println("ALERTA CUENTA SUSPENDIDA: Cliente: $nombreCliente")
            println("Notificar al equipo de fidelizacion Loyaltee")
            println("Activar el protocolo de retencion de cliente")
        }
        
        "VENCIDO" ->{
            println("MEMBRESIA VENCIDA: Cliente: $nombreCliente")
            println("Enviar oferta de renovacion con beneficios especiales")
            println("Hacer seguimiento en 15 dias")
        }
        
        "ACTIVO" -> println("Activo: Cliente: $nombreCliente con membresia vigente en Loyaltee")
        "NUEVO" -> println("Nuevo: Cliente: $nombreCliente bienvenido, activar onboarding Loyaltee")
        else -> println("Estado de cuenta no reconocido")
    }
}