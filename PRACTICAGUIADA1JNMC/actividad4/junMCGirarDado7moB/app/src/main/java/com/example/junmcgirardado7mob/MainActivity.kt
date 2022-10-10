package com.example.junmcgirardado7mob

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView


//JULEXI NICOLE MARQUEZ COBEÑA
//CREE CODIGO PRA UN DADO
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val darVuelta: Button = findViewById(R.id.button)
        darVuelta.setOnClickListener{ darVuelta() }
    }
    //GIRAMOS EL DADO
    private fun darVuelta() {
        //CREAMOS Y GIRAMOS EL DADO
        val dado = Dado(6)
        val girarDado = dado.dadosRoll()
        //MOSTRAMOS EL VALOR
        val imagenDado: ImageView = findViewById(R.id.imageView)
        //DEPENDIENDO DEL VALOR MOSTRAMOS UNA IMAGEN
        when (girarDado) {
            1 -> imagenDado.setImageResource(R.drawable.dicee_1)
            2 -> imagenDado.setImageResource(R.drawable.dice_2)
            3 -> imagenDado.setImageResource(R.drawable.dice_3)
            4 -> imagenDado.setImageResource(R.drawable.dice_4)
            5 -> imagenDado.setImageResource(R.drawable.dice_5)
            6 -> imagenDado.setImageResource(R.drawable.dice_6)
        }
    }
}
// CCLASE DONDE DEFINIMIOS LA FUNCION DADOSROOL
class Dado (private val numLados:Int){
    /*
    * GENERAMOS LA SERIE PARA OBTENER EL NUMERO ALEATORIO
    * */
    fun dadosRoll(): Int{
        return (1..numLados).random()
    }
}
