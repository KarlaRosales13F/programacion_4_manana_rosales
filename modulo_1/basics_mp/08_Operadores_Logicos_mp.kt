fun main() {
  println("Operadores Lógicos - Loyaltee")
  val clienteFrecuente=true
  val tieneDescuento=false
  val cuentaActiva=true
  println("&& - And Logico")
  println("$clienteFrecuente && $tieneDescuento=${clienteFrecuente && tieneDescuento}")
  println("$cuentaActiva && $clienteFrecuente=${cuentaActiva && clienteFrecuente}")
 println("|| - Or Logico")
 println("$clienteFrecuente || $tieneDescuento=${clienteFrecuente || tieneDescuento}")
 println("$cuentaActiva || $clienteFrecuente=${cuentaActiva || clienteFrecuente}") 
 println("! - Not")
 println("! $clienteFrecuente = ${!clienteFrecuente}")
 println("! $cuentaActiva = ${!cuentaActiva}")
 
}