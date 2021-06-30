import planeta.*

class Persona {

	var property edad = 0
	
	method potencia() { return 20 }
	
	method inteligencia() { return if(self.edad().between(20,40)) {12} else {8} }
	
	method esDestacada() { return self.edad() == 25 or self.edad() == 35 }
	
	method ofrecerTributoA(unPlaneta) {}
	
	method valor() { return self.potencia() + self.inteligencia() }

}

class Atleta inherits Persona {
	
	var property masaMuscular = 4
	
	var property cantidadTecnicasConocidas = 2
	
	override method potencia() { return super() + (self.masaMuscular() * self.cantidadTecnicasConocidas()) }
	
	override method esDestacada() { return super() or self.cantidadTecnicasConocidas() > 5 }
	
	method entrenar(unaCantidadDias) { masaMuscular += unaCantidadDias * 0.2 } 		
	
	method aprenderTecnica() { cantidadTecnicasConocidas += 1 }
	
	override method ofrecerTributoA(unPlaneta) { unPlaneta.fundarUnMuseo() }
		
}

class Docente inherits Persona {
	
	var property cursosDados = 0
	
	override method inteligencia() { return super() + (self.cursosDados() * 2) }
	
	override method esDestacada() { return self.cursosDados() > 3 }
	
	override method ofrecerTributoA(unPlaneta) { unPlaneta.construirMurallas(2) }
	
	override method valor() { return super() + 5 }
	
}

class Soldado inherits Persona {
	
	const property armas = #{}
	
	method aniadir(unArma) { armas.add(unArma) }
	
	override method potencia() { return super() + self.totalDePotenciaDeArmas() }
	
	override method ofrecerTributoA(unPlaneta) { unPlaneta.construirMurallas(5) }
	
	method totalDePotenciaDeArmas() { return armas.sum({ a => a.potenciaOtorgadaA(self) }) }
	
}


class Pistolete {
	
	var property largoCm
	
	method potenciaOtorgadaA(unSoldado) { return if(unSoldado.edad() > 30) { largoCm * 3 } else { largoCm * 2 } }
	
}

class Espadon {
	
	var property pesoEnKilos
	
	method potenciaOtorgadaA(unSoldado) { return if(unSoldado.edad() < 40) { pesoEnKilos / 2 } else {6} }
		
}


