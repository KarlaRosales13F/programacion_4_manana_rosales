fun main() {
  println("Loyaltee - Segmentación de Clientes")
  println("Ingrese el volumen de compras anuales ($):")
  val volumenCompras = readLine()?.toIntOrNull() ?: 0
  
  val categoria = if (volumenCompras <= 100) {
      "Bronce (Cliente Nuevo)"
  } else if (volumenCompras < 500) {
      "Plata (Cliente Frecuente)"
  } else if (volumenCompras < 1500) {
      "Oro (Cliente VIP)"
  } else if (volumenCompras < 5000) {
      "Platino (Socio Estratégico)"
  } else {
      "Embajador de Marca"
  }
  
  println("El cliente ha sido clasificado como: $categoria")
}