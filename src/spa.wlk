import personas.*

object spa {
	
	var ultimoCliente
	var clienteActual
	
	method atender(persona) { 
		
		persona.recibirMasajes() ; persona.darseUnBanioDeVapor()
		
		clienteActual = persona
		
		if (clienteActual == ultimoCliente) { persona.recibirMasajes() }
	
	}
		
	method ultimaPersona(persona) { ultimoCliente = persona }
		
			
}