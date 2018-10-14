import armadura.*
import collarDivino.*
import cotaDeMalla.*
import fuerzaOscura.*
import hechizoDeLogos.*
import libroDeHechizosYEspejo.*
import mascara.*
import personaje.*
import feriaDeHechiceria.*

class Arma {
	method unidadesDeLucha(personaje){
		return 3
	}
	
	method precio(personaje){
		return self.unidadesDeLucha(personaje) * 5
	}
}
