import arma.*
import armadura.*
import collarDivino.*
import cotaDeMalla.*
import fuerzaOscura.*
import hechizoDeLogos.*
import libroDeHechizosYEspejo.*
import mascara.*
import feriaDeHechiceria.*

class Personaje{
	const property valorBase = 3
	var property hechizoPreferido
	var property artefactos
	var property valorBaseLucha = 1
	var property monedas = 100
	
	constructor(unHechizoPreferido,unosArtefactos){
		hechizoPreferido = unHechizoPreferido
		artefactos = unosArtefactos
	}
	
	method nivelHechiceria(){
		return valorBase * hechizoPreferido.poder() + fuerzaOscura.valor()
	}
	
	method seCreePoderoso(){
		return hechizoPreferido.esPoderoso()	
	}

	method agregarArtefacto(artefacto){
		artefactos.add(artefacto)
	}
	
	method removerArtefacto(artefacto){
		artefactos.remove(artefacto)
	}
	
	method valorLucha(){
		return valorBaseLucha + artefactos.sum({unArtefacto => unArtefacto.unidadesDeLucha(self)})
	}
	
	method tieneMasLuchaQueHechiceria(){
		return self.valorLucha() > self.nivelHechiceria()
	}
	
	method mejorPertenencia(){
		var pertenenciasRestantes = artefactos.filter({unArtefacto => unArtefacto != espejo})
		return pertenenciasRestantes.max({unArtefacto => unArtefacto.unidadesDeLucha(self)}) //maximo segun unidades de lucha
	}
	
	method poderMejorPertenencia(){
		return self.mejorPertenencia().unidadesDeLucha(self)	
	}
	
	method estaCargado(){
		return artefactos.size() >= 5
	}
	/*
	method comprar(unArtefacto){
		feriaDeHechiceria.iniciarVenta(self, unArtefacto)
		self.agregarArtefacto(unArtefacto)
	}
	
	
	method canjearHechizo(unHechizo){
		feriaDeHechiceria.venderHechizo(self,unHechizo)
		monedas -= (unHechizo.precio(self)-self.precioHechizoPreferido())
	}
	
	method pagar(precio){
		monedas -= precio
	}
	
	method puedeGastar(monto){
		return monedas >= monto
	}
	*/
	
	method precioHechizoPreferido(){
		return (hechizoPreferido.precio(self)/2)
	}
	
	method comprarHechizo(unHechizo){
		feriaDeHechiceria.venderHechizo(self,unHechizo)
		hechizoPreferido = unHechizo
	}
	
	method comprarArtefacto(unArtefacto){
		feriaDeHechiceria.venderArtefacto(self,unArtefacto)
		self.agregarArtefacto(unArtefacto)
	}
	
	method gastarMonedas(cantidad){
		monedas -= 0.max(cantidad)
	}
	
	method puedePagarHechizo(unHechizo){
		return monedas - unHechizo.precio(self) + self.precioHechizoPreferido() >= 0
	}
	
	method puedePagarArtefacto(unArtefacto){
		return monedas - unArtefacto.precio(self) >= 0
	}
	
	method cumplirObjetivo(){
		monedas += 10
	}
	
}
