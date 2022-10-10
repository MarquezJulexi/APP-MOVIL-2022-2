//JULEXI NICOLE MARQUEZ COBEÑA
fun  main() {
    val DadoUno=Dado(6)
    println("Tu Primer Dado de ${DadoUno.numLados} lados sacó ${DadoUno.DadosRoll()}!")

    val DadoDos=Dado(20)
    println("Tu Segundo Dado de ${DadoDos.numLados}lados sacó${DadoDos.DadosRoll()}!")
}

class Dado(val numLados: Int){
    fun DadosRoll(): Int {
        return (1..numLados).random()
    }
}