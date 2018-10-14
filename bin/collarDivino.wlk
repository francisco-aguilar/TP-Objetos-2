import arma.*
import armadura.*
import cotaDeMalla.*
import fuerzaOscura.*
import hechizoDeLogos.*
import libroDeHechizosYEspejo.*
import mascara.*
import personaje.*
import feriaDeHechiceria.*

object collarDivino{
	var property cantidadDePerlas = 5
	
	method unidadesDeLucha(personaje){
		return cantidadDePerlas
	}
	
	method precio(personaje){
		return cantidadDePerlas * 2
	}
}

