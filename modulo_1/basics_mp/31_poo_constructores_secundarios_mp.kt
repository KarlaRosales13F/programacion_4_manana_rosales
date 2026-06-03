class PlanMembresia(val nombre: String, val puntosBase: Double) {
    val beneficios:  Double get() = puntosBase * 0.10
    val costoAnual:  Double get() = puntosBase * 2
 
    // Siempre llaman al constructor primario con this(...)
    constructor(puntosBase: Double) : this("Estandar", puntosBase)
    constructor(nombre: String, puntosBase: Int) : this(nombre, puntosBase.toDouble())
 
    override fun toString() = "PlanMembresia(${nombre}x${puntosBase}) | beneficios=${beneficios}"
}
 
fun main() {
    val r1 = PlanMembresia("Oro", 500.0)
    val r2 = PlanMembresia(300.0)        // plan estandar
    val r3 = PlanMembresia("Platino", 1000)       // con Int
 
    println(r1)  // PlanMembresia(Orox500.0) | beneficios=50.0
    println(r2)  // PlanMembresia(Estandarx300.0) | beneficios=30.0
}