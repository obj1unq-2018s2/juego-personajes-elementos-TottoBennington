object luisa {
	var property personajeActivo = null
	
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var arma
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var valorRecolectado = 0
	var ultElemEncontrado = null
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultElemEncontrado = elemento
	}
	method esFeliz() = valorRecolectado>=50 or ultElemEncontrado.altura()>=10
}

object castillo{
	const property alto = 20 // constante porque no cambia la alt
	var property defensa = 150
	
	method recibirAtaque(potenciaArmaEnemiga){defensa -= potenciaArmaEnemiga}
	method valorQueOtorga() = defensa/5
	method recibirTrabajo(){
		//defensa += 20; defensa.min(200)
		defensa =(defensa+=20).min(200) // dev el min entre def y 200
	}
}

object aurora{
	const property alto = 1 // constante porque no cambia la alt
	var property vivaOMuerta = true
	method recibirAtaque(potenciaArmaEnemiga){
		if(potenciaArmaEnemiga>=10){
			vivaOMuerta = false
		}
	}
	method valorQueOtorga() = 15
	method recibirTrabajo(){alto+=1}
}

object tipa{
	var property alto = 8
	
	method recibirAtaque(potenciaArmaEnemiga){}
	method valorQueOtorga() = alto*2
	method recibirTrabajo(){}
}

object ballesta{
	var flechas = 10
	var potencia = 4
	
	method estaCargada() = flechas>0
	method registrarUso(){
		flechas -=1
	}
}
object jabalina{
	var cargada = true
	var potencia = 30
	
	method estaCargada() = cargada
	method registrarUso(){cargada = false}
}