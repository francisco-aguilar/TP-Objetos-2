import arma.*
import armadura.*
import collarDivino.*
import cotaDeMalla.*
import fuerzaOscura.*
import hechizoDeLogos.*
import libroDeHechizosYEspejo.*
import mascara.*
import personaje.*

object feriaDeHechiceria{
	/* 
	method iniciarVenta(cliente,artefacto){
		if(!cliente.puedeGastar(artefacto.precio())){
			error.throwWithMessage("El cliente no tiene las monedas necesarias")
		}
		cliente.pagar(artefacto.precio())
	}
	
	method venderHechizo(cliente,hechizo){
		if(cliente.precioHechizoPreferido()<hechizo.precio(cliente)){
			error.throwWithMessage("El cliente no puede obtener el hechizo")
		}
		cliente.hechizoPreferido(hechizo)
	}
	*/
	
	method venderHechizo(unCliente,unHechizo){
		if(!unCliente.puedePagarHechizo(unHechizo)){
			throw new Exception("El cliente no tiene el dinero suficiente")
		}
		unCliente.gastarMonedas(unHechizo.precio(unCliente) - unCliente.precioHechizoPreferido())
	}
	
	method venderArtefacto(unCliente,unArtefacto){
		if(!unCliente.puedePagarArtefacto(unArtefacto)){
			throw new Exception("El cliente no tiene el dinero suficiente")
		}
		unCliente.gastarMonedas(unArtefacto.precio(unCliente))
	}
	
}
