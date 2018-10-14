import arma.*
import collarDivino.*
import cotaDeMalla.*
import fuerzaOscura.*
import hechizoDeLogos.*
import libroDeHechizosYEspejo.*
import mascara.*
import personaje.*
import feriaDeHechiceria.*

class Armadura {
	var property refuerzo
	var property valorBase
	
	constructor(unRefuerzo,unValorBase){
		refuerzo = unRefuerzo
		valorBase = unValorBase
	}
	
	method unidadesDeLucha(personaje){
			return valorBase + refuerzo.unidadesExtra(personaje)
	}
	
	method precio(personaje){
		return refuerzo.precioExtra(personaje,valorBase)
	} 
}

object bendicion{
	method unidadesExtra(personaje){
		return personaje.nivelHechiceria()
	}
	
	method precioExtra(personaje,valorBase){
		return valorBase
	}
}

object ninguno{
	method unidadesExtra(personaje){
		return 0
	}
	
	method precioExtra(personaje,valorBase){
		return 2
	}
}
