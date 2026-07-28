fun main() {
  println("Controles de Flujo")
  println("Condicional If - Anidado")
  println("El cliente tiene membresia activa?")
  val tieneMembresia =readLine()?.trim()?.lowercase()=="s"
  println("Puntos acumulados del cliente")
  val puntos =readLine()?.toIntOrNull()?:0
  if(tieneMembresia){
      println("Cliente con membresia activa Loyaltee")
      if(puntos<100) {
          println("Puntos insuficientes para canjear recompensa")
      } else{
          println("Puntos suficientes, puede canjear recompensa")
      }
  }else{
      println("Cliente sin membresia activa")
      if(puntos<50 || puntos >10000){
          println("Puntos fuera del rango valido del programa")
      }else{
          println("Puntos validos, invite al cliente a activar su membresia")
      }
  }

}