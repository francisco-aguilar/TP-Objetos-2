import arma.*
import armadura.*
import collarDivino.*
import cotaDeMalla.*
import fuerzaOscura.*
import hechizoDeLogos.*
import libroDeHechizosYEspejo.*
import personaje.*
import feriaDeHechiceria.*

class Mascara {
	var indiceOscuridad
	var property valorMinimo = 4
	
	constructor(unIndiceOscuridad){
		indiceOscuridad = unIndiceOscuridad
	}
	
	method unidadesDeLucha(personaje){
		return valorMinimo.max((fuerzaOscura.valor()/2) * indiceOscuridad)
	}
}
