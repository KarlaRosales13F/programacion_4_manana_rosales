fun main() {
  println("Verificación de Beneficios Loyaltee")
  println("¿El comercio tiene convenio activo? (s/n)")
  val tieneConvenio = readLine()?.trim()?.lowercase() == "s"
  
  println("Días de antigüedad del cliente:")
  val antiguedad = readLine()?.toIntOrNull() ?: 0
  
  if (tieneConvenio) {
      println("Estado: Comercio con beneficios habilitados")
      if (antiguedad >= 365) {
          println("-> Aplica para Bono de Aniversario")
      } else {
          println("-> No cumple antigüedad para bonos")
      }
  } else {
      println("Estado: Comercio en plan básico")
      if (antiguedad > 180 || antiguedad < 0) {
          println("-> Revisar elegibilidad para upgrade de plan")
      } else {
          println("-> Sin ofertas disponibles actualmente")
      }
  }
}