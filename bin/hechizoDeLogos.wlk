import arma.*
import armadura.*
import collarDivino.*
import cotaDeMalla.*
import fuerzaOscura.*
import libroDeHechizosYEspejo.*
import mascara.*
import personaje.*
import feriaDeHechiceria.*

import personaje.*

class HechizoDeLogos {
	var property nombre
	var multiplo
	
	constructor(unNombre,unMultiplo){
		nombre = unNombre
		multiplo = unMultiplo
	}
	
	method poder(){
		return (nombre.size()) * multiplo
	}
	
	method esPoderoso(){
		return self.poder() > 15
	}
	
	method unidadesExtra(personaje){
		return self.poder()
	}
	
	method precio(personaje){
		return self.poder()
	}
	
	method precioExtra(personaje,valorBase){
		return valorBase + self.precio(personaje)
	}
	
}

object hechizoBasico {
	var property poder = 10
	var property esPoderoso = false
	
	method unidadesExtra(personaje){
		return self.poder()
	}
	
	method precio(personaje){
		return 10
	}
	
	method precioExtra(personaje,valorBase){
		return valorBase + self.precio(personaje)
	}
}