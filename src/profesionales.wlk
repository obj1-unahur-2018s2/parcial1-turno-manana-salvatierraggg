// esta clase está completa, no necesita nada más

class ProfesionalAsociado {
	var universidad
	var dineroDisponible=0
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrar(dinero){dineroDisponible+=dinero}
	method pasarDinero()
	{asociacionDelLitoral.recibirDonacion(dineroDisponible)
	dineroDisponible=0	
	}
	method dinero(){return 0 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var dineroDisponible=0
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar(){return #{universidad.provincia()}}
	method honorariosPorHora(){return universidad.honorariosPorHora()}
	method cobrar(dinero){dineroDisponible=dinero}
	method pasarDinero()
	{universidad.recibirDonacion(dineroDisponible/2)
	dineroDisponible=0
	}
	method dinero(){return dineroDisponible }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorario
	var dineroDisponible=0
	const provincias=#{}
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method HonorariosPorHora(tanto){honorario=tanto}
	method honorariosPorHora(){return honorario}
	method provinciasDondePuedeTrabajar(elegir){ provincias.add(elegir) }
	method provinciasDondePuedeTrabajar(){ return provincias }
	method cobrar(dinero){dineroDisponible+=dinero}
	method pasarDinero(dinero,quien)
	{dineroDisponible-=dinero
	quien.cobrar(dinero)
	}
	method dinero(){return dineroDisponible }
	

}




class Universidad{
	var honorario
	var provincia
	var donacionesRecividas=0
method recibirDonacion(dinero){donacionesRecividas+=dinero}
method honorariosPorHora(tanto){honorario=tanto}
method honorariosPorHora(){return honorario}
method provincia(aqui){provincia=aqui}
method provincia(){return provincia}
method dinero(){return donacionesRecividas }
	
}

object asociacionDelLitoral{
	var donacionesRecividas=0
	method recibirDonacion(dinero){donacionesRecividas=dinero}
	method dinero(){return donacionesRecividas}
	
}
