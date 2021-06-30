import habitantes.*

class Planeta {
	
	const property personas = #{}
	
	var property cantidadMuseos = 0
	
	var property longitudTotalMurallas = 0
	
	method cantidadDeHabitantes() { return personas.size() }
	
	method aniadirA(unHabitante) { personas.add(unHabitante) }
	
	method delegacionDiplomatica() { return personas.filter({ p => p.esDestacada() }) }
	
	method valorIncialDefensa() { return personas.count({ p => p.potencia() >= 30 }) }
	
	method esCulto() { return self.cantidadMuseos() >= 2 and personas.all({ p => p.inteligencia() >= 10 }) }
	
	method potenciaReal() { return personas.sum({ p => p.potencia() }) }
	
	method construirMurallas(unaCantidad) { longitudTotalMurallas += unaCantidad }
	
	method fundarUnMuseo() { cantidadMuseos += 1 }
	
	method potenciaAparente() { return personas.map({ p => p.potencia() }).max() * self.cantidadDeHabitantes() }
	
	method necesitaReforzarse() { return self.potenciaAparente() >= self.potenciaReal() * 2 }
	
	method recibirTributos() { personas.forEach({ p => p.ofrecerTributoA(self) }) }
	
	method habitantesValiosos() { return personas.filter({ p => p.valor() >= 40 }) }
	
	method apaciguarA(unPlanteta) { return self.habitantesValiosos().forEach({ h => h.ofrecerTributoA(unPlanteta)}) }

} 