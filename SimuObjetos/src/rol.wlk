class RolMucama{
	method puedeDefender(){
		return false
	}
	method fuerzaExtra(){
		return 0
	}
}
class RolSoldado{
	method puedeDefender(){
		return true
	}
	method fuerzaExtra(){
		return 0
	}
}
class RolObrero{
	var practica
	method puedeDefender(){
		return true
	}
	method fuerzaExtra(){
		return practica
	}
}