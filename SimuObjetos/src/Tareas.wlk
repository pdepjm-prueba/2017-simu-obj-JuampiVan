class ArregarMaq{
	var complejidad=100
	var herramientasRequeridas= #{}
	method dificultad(empleado){
		return complejidad*2
	}
	method puedeHacerla(empleado){
		return empleado.tieneHerramientas(herramientasRequeridas) && empleado.estamina() >= complejidad
	}
	method hacetePor(empleado){
		empleado.perderEstamina(complejidad)
	}	
}
class DefenderSector{
	var gradoDeAmenaza
	method dificultad(empleado){
		return gradoDeAmenaza * empleado.factorDeDebilidad()
	}
	method puedeHacerla(empleado){
		return empleado.puedeDefender() && empleado.fuerza() >= gradoDeAmenaza
	}
}
class LimpiarSector{
	method dificultad(empleado){
		
	} 
}