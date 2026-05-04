fun main() {
  println("Operadores de Comparacion")
  val numero1 =15
  val numero2 = 10
  println("$numero1==$numero2=${numero1==numero2}")
  println("$numero1.equals $numero2=${numero1==numero2}")
  println("$numero1!=$numero2=${numero1!=numero2}")
  println("$numero1>$numero2=${numero1>numero2}")
  println("$numero1>=$numero2=${numero1>=numero2}")
  println("$numero1<$numero2=${numero1<numero2}")
  println("$numero1<=$numero2=${numero1<=numero2}")
}



fun main() {
    val puntosCliente = 2500
    val requisitoPlatino = 5000
    
    println("--- Verificación de Status ---")
    println("¿Puntos exactos para ascenso? ${puntosCliente == requisitoPlatino}")
    println("¿Le faltan puntos? ${puntosCliente < requisitoPlatino}")
    println("¿Es cliente VIP (más de 2000 pts)? ${puntosCliente > 2000}")
}