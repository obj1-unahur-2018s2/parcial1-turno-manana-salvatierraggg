import profesionales.*
import solicitantes.*
class Empresa {
	var honorarioDeReferencia
	const conjuntoProfesional=#{}
	
	method honorarioDeReferencia(tanto){honorarioDeReferencia=tanto}
	method honorarioDeReferencia(){return honorarioDeReferencia}
	
	method contratarProfesional(tal)
	{ conjuntoProfesional.add(tal) }
	
	method ProfesionalesCaros()
	{return conjuntoProfesional
		.filter({ e=>e.honorariosPorHora()>honorarioDeReferencia })
	}
	
	method conjuntoUniversitario()
	{return conjuntoProfesional
		.map({ e=>e.universidad() })
	}
	
	method profecionalMasBaratos()
	{return conjuntoProfesional
		.min({ e=>e.honorariosPorHora() })
	}
	
	method estaCubierta(provincia)
	{return conjuntoProfesional
		.any({e=>e.provinciasDondePuedeTrabajar().contains(provincia) })
	}
	
	method universitariosDe(aqui)
	{return conjuntoProfesional
		.filter({ e=>e.universidad()==aqui })
		.size()	
	}
	
	method esPocoAtractivo(profecional)
	{return conjuntoProfesional
		.any({ e=>( e.honorariosPorHora()<profecional.honorariosPorHora() )
			and
			 ( e.provinciasDondePuedeTrabajar()==profecional.provinciasDondePuedeTrabajar() )
			})
	}
	
	method puedeAtender(tal)
	{if (tal.institucion())
	{
		return conjuntoProfesional
		.any({e=>tal.reconosidas().contains( e.universidad() ) })
		 }
	 else
	{
		return conjuntoProfesional
		.any({ e=>e.provinciasDondePuedeTrabajar().contains(tal.provincia() )  })	
		 }	
	
	}



	
}
