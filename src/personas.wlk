
object olivia {
	var concentracion = 6
	
	method recibirMasajes() { concentracion += 3}
	method discutir() { 
		   if ( concentracion >= 1) { concentracion -= 1}
		   		}
	method gradoDeConcentracion() { return concentracion }
	method darseUnBanioDeVapor() {}
	
	//agrego el metodo de darse un baño de vapor para mantener el polimorfismo en el spa
}


object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() { self.comerFideos() ; self.tomarAgua() ; self.verElNoticiero()	}

}

object ramiro {
	var contractura = 0
	var pielGrasosa = false
	
	method nivelDeContractura() {
		if (contractura == 0) { return "nada de contractura" } 	
		if (contractura.between(1,10)) { return "un poco de contractura"}
		if (contractura > 10) { return "bastante contractura"}
		return contractura	
	}
	
	method recibirMasajes() { 
		if (contractura >= 2) { contractura -= 2 }
		if (contractura == 1) { contractura = 0 }
	}
	
	method darseUnBanioDeVapor() { pielGrasosa = false }
	method comerseUnBigMac() { pielGrasosa = true }
	method bajarALaFosa() { pielGrasosa = true ; contractura += 1 }
	method jugarAlPaddle() { contractura += 3 }
	method diaDeTrabajo() { self.bajarALaFosa() ; self.comerseUnBigMac() ; self.comerseUnBigMac() }
	
	
}






