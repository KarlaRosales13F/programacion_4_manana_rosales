fun main() {
    println("--- Registro de Nuevo Cliente Loyaltee ---")
    
    print("Ingresa el correo electrónico: ")
    val email = readLine()
    
    print("Ingresa el código de referido (opcional): ")
    val referido = readLine() ?: "Sin referido"
    
    println("Registro exitoso para: $email. Código aplicado: $referido")
    
    /**
     * Documentación de Función:
     * @param email Correo del cliente capturado por consola.
     * @return Mensaje de confirmación de alta en el sistema.
     */
}