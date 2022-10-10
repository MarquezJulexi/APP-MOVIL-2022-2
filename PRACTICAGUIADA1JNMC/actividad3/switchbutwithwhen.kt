//JULEXI NICOLE MARQUEZ COBEÑA
fun  main() {
    val DadoUno=Dado(8)
    val resultGiro= DadoUno.Giro()
    val NumSuerte= 7

    when (resultGiro){
        NumSuerte -> println("Ganaste")
        1 -> println("¡Lastima! Sacaste 1. Intentalo de nuevo")
        2 -> println("😓,Sacaste un 2. Intentalo de nuevo")
        3 -> println("Desafortunadamente :(, Sacaste un 3. Intentalo de nuevo")
        4 -> println("No llores :,v Sacaste un 4. Intentalo de nuevo")
        5 -> println("Disculpa UnU Sacaste un 5. Intentalo de nuevo")
        6 -> println("Oh no D: Sacaste un 6. Intentalo de nuevo")
        8 -> println("TnT Sacaste un 8. Intentalo de nuevo")
    }
}

class Dado(val numLados: Int){
    fun Giro(): Int {
        return (1..numLados).random()
    }
}