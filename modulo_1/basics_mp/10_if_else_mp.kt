fun main() {

  println("Controles de Flujo - Loyalty")
  println("Condicional If - else")

  println("Cliente afiliado al programa s/n: ")
  val afiliado = readLine()?.trim()?.lowercase() == "s"

  println("Total de compra: ")
  val totalCompra = readLine()?.toDoubleOrNull() ?: 0.0

  if (afiliado) {
      val descuento = totalCompra * 0.20
      println("Descuento aplicado: $${"%.2f".format(descuento)}")
  } else {
      println("Pago total: $${"%.2f".format(totalCompra)}")
  }

  // ejercicio en clase:

  println("Cliente canjea puntos o acumula c/a")

  val canjea = readLine()?.trim()?.lowercase() == "c"

  if (canjea) {
      println("Se aplican beneficios del programa")
  } else {
      println("Se acumulan puntos en la cuenta")
  }

}