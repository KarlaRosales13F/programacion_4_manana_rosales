
fun main() {
  println("Controles de Flujo")
  println("Condicional If - Multiples condiciones")
  println("Puntos acumulados del cliente Loyaltee")
  val puntos = readLine()?.toIntOrNull()?:0
  
  val clasificacion = if(puntos<=100){
      "Bronce"
  } else if(puntos<500){
      "Plata"
  } else if(puntos<1000){
      "Oro"
  } else if(puntos<3000){
      "Platino"
  } else if(puntos<5000){
      "Diamante"
  } else {
      "Cliente VIP Loyaltee"
  }
  
  println("Clasificacion: $clasificacion")
 
}