fun main() {
    println("Operadores Aritméticos - Loyalty")

    val puntosCliente1 = 10
    val puntosCliente2 = 2

    println("Suma de puntos")
    println("$puntosCliente1 + $puntosCliente2 : ${puntosCliente1 + puntosCliente2}")

    println("Resta de puntos")
    println("$puntosCliente1 - $puntosCliente2 : ${puntosCliente1 - puntosCliente2}")

    println("Multiplicacion de puntos")
    println("$puntosCliente1 * $puntosCliente2 : ${puntosCliente1 * puntosCliente2}")

    println("Division de puntos")
    println("$puntosCliente1 / $puntosCliente2 : ${puntosCliente1 / puntosCliente2}")

    println("Módulo de puntos")
    println("$puntosCliente1 % $puntosCliente2 : ${puntosCliente1 % puntosCliente2}")


    println("Operadores de asignacion compuesta en puntos")

    var puntos = 10

    puntos += 5
    println("puntos +=5 $puntos")

    puntos -= 3
    println("puntos -=3 $puntos")

    puntos *= 6
    println("puntos *=6 $puntos")

    puntos /= 2
    println("puntos /=2 $puntos")

    puntos %= 2
    println("puntos %=2 $puntos")

    puntos++
    println("puntos++ $puntos")

    puntos--
    println("puntos-- $puntos")


    // ejemplo:

    println("Comparacion de clientes Loyalty")

    println("$puntosCliente1 == $puntosCliente2 : ${puntosCliente1 == puntosCliente2}")
    println("$puntosCliente1 != $puntosCliente2 : ${puntosCliente1 != puntosCliente2}")
    println("$puntosCliente1 > $puntosCliente2 : ${puntosCliente1 > puntosCliente2}")
    println("$puntosCliente1 < $puntosCliente2 : ${puntosCliente1 < puntosCliente2}")
    println("$puntosCliente1 <= $puntosCliente2 : ${puntosCliente1 <= puntosCliente2}")
    println("$puntosCliente1 >= $puntosCliente2 : ${puntosCliente1 >= puntosCliente2}")

}