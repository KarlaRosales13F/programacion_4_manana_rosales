fun main() {
  println("Controles de Flujo - Loyalty")
  println("Condicional If")
  
  val puntos = readLine()?.toDoubleOrNull() ?: 36.5
  
  if(puntos>=100.0){
      println("Cliente premium: beneficios especiales activados")
  }
  
  if(puntos>=200.0){
      println("Cliente VIP: acceso a recompensas exclusivas")
  }
  
  println("Puntos registrados: $puntos")
}