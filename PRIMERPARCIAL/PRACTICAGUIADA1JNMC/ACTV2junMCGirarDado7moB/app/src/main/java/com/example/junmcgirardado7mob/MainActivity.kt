package com.example.junmcgirardado7mob

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

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
        val resultTextView: TextView = findViewById(R.id.textView)
        resultTextView.text = girarDado.toString()
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
