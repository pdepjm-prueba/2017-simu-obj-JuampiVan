class Minion{
	var rol
	var estamina
	var herramientas
	var tareasRealizadas= #{}
	constructor(unRol,_estamina,_herramientas){
		rol = unRol
		estamina=_estamina
		herramientas=_herramientas
	}
	method cambiarRoll(_unRoll){
		rol = _unRoll
	}
	method comerFruta(fruta){
		estamina+= fruta.puntosDeEstamina()
	}
	method experiencia(){
		return self.dificultadAcumulada()*tareasRealizadas.size()
	} 
	method dificultadAcumulada(){
		return tareasRealizadas.sum({t => t.dificultad(self)})
	}
	method hacerTarea(tarea){
		if(not tarea.puedoHacerla()){
			throw error
		}
		tareasRealizadas.add(tarea)
		tarea.hacetePor(self)
		rol.aumentarPractica()
	}
	method estamina(){
		return estamina
	}
	method tieneHerramientas(herramientasQeNecesita){
		return herramientasQeNecesita.all({h=>herramientas.contains(h)})
	}
	method perderEstamina(cantidad){
		estamina-= cantidad
	}
	method puedeDefender(){
		return rol.puedeDefender()
	}
	method fuerza(){
		return estamina/2 + 2 + rol.fuerzaExtra()
	}
}
class Biclopes inherits Minion{
	constructor(unRoll,_estamina,_herramientas) = super(unRoll,_estamina,_herramientas){
		rol=unRoll
		estamina= _estamina.min(10)
		herramientas=_herramientas
	}
	method factorDeDebilidad(){
		return 1
	}
}
class Ciclope inherits Minion{
	constructor(unRoll,_estamina,_herramientas) = super(unRoll,_estamina,_herramientas){
		rol=unRoll
		estamina = _estamina
		herramientas=_herramientas
	}
	method factorDeDebilidad(){
		return 2
	}
	override method fuerza(){
		return super() /2
	}
}
object uva{
	method puntosDeEstamina(){
		return 1
	}
}
object banana{
	method puntosDeEstamina(){
		return 10
	}
}
