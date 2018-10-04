class Institucion {
	
	var requisito=false
	const reconosidas=#{}
	method reconocerUniversidad(tal){ reconosidas.add(tal) }	
	method requisitoCumplido(){requisito=true}
	method institucion(){return true}
	method reconosidas(){return reconosidas}
	}

class Personas{
	
	var requisito=false
	var provincia
	method establecerProvincia(aqui){provincia=aqui}
	method requisitoCumplido(){requisito=true}
	method institucion(){return false}
	method provincia(){return provincia}
}
