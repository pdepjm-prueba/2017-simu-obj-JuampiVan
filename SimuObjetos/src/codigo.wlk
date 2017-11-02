class Minion{
	var roll
	var estamina
	var herramientas
	constructor(unRoll,_estamina,_herramientas){
		roll = unRoll
		estamina=_estamina
		herramientas=_herramientas
	}
	method cambiarRoll(_unRoll){
		roll = _unRoll
	}
	method fuerza(){
		return (estamina/2)+2
	}
	method puedeArreglar(maquina){
		return estamina>maquina.complejidad() && herramientas==maquina.herramientasRequeridas()
	}
	method comerFruta(fruta){
		if(fruta=="banana"){
			estamina+=10
		}if(fruta=="manzana"){
			estamina+=5
		}if (fruta=="uva"){
			estamina+=1
		}
	}
}
class Biclopes inherits Minion{
	constructor(unRoll,_estamina,_herramientas) = super(unRoll,_estamina,_herramientas){
		roll=unRoll
		estamina= _estamina.min(10)
		herramientas=_herramientas
	}
}
class Ciclope inherits Minion{
	constructor(unRoll,_estamina,_herramientas) = super(unRoll,_estamina,_herramientas){
		roll=unRoll
		estamina = _estamina
		herramientas=_herramientas
	}
}
class Soldado{
	var danio
	constructor (_danio){
		danio=_danio
	}
}
class Obrero{
	
}
class Mucama{
	
}
class Maquina{
	var complejidad
	var herramientasRequeridas
	constructor (_Complejidad,_herramientasRequeridas){
		complejidad=_Complejidad
		herramientasRequeridas=_herramientasRequeridas
	}
	method complejidad(){
		return complejidad
	}
	method herramientasRequeridas(){
		return herramientasRequeridas
	}
	
}
