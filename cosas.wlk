object knightRider {
    method peso() = 500
    method peligrosidad() = 10 
    method bultos()=1
}

object auto{method peligrosidad() = 15}
object robot {method peligrosidad() = 30}
object bumblebee {
    var estado = robot
    method cambiarEstado(nuevoEstado){
        estado=nuevoEstado
    }
    method peso() = 800
    method peligrosidad() = estado.peligrosidad() 
    method bultos() = 2 
}

object paqueteDeLAdrillos {
    var cantidadLadrilos = 10
    method agregarLAdrillos(nro) {
      cantidadLadrilos+=nro
    }
    method sacarLAdrillos(nro) {
      cantidadLadrilos-=nro
    }
    method peso() = 2*cantidadLadrilos
    method peligrosidad() = 12
    method bultos() = if(cantidadLadrilos <= 100) 1 else if(cantidadLadrilos<=300) 2 else 3 
}
object arenaAGranel {
    var peso = 10
    method peso() = peso
    method aumentarPeso(nro) {
      peso+=nro
    }
    method sacarPeso(nro) {
      peso-=nro
    }
    method peligrosidad() = 1 
    method bultos()=1
}
object bateriaAntiaerea {
    var misiles=true
    method sacarMisiles() {
      misiles=false
    }
    method ponerMisiles(){
        misiles=true
    }
    method peso() = if(misiles)300 else 200
    method peligrosidad() = if(misiles)100 else 0
    method bultos() = if(misiles)2 else 1
}
object contenedorPortuario {
    const cosas=[]
    method peso() = 100+cosas.sum{cosa=>cosa.peso()}
    method peligrosidad() = cosas.max({cosa=>cosa.peligrosidad()},{0})
    method bultos() =1+cosas.sum{cosa=>cosa.bultos()} 
}
object residuosRadioactivos {
    var peso = 10
    method aumentarPeso(nro) {
      peso+=nro
    }
    method sacarPeso(nro) {
      peso-=nro
    }
    method peligrosidad() = 200
    method bultos()=1
}
object embalajeDeSeguridad {
    var contenido = contenedorPortuario
    method cambiarContenido(nuevoContenido) {
      contenido=nuevoContenido
    }
    method peso() = contenido.peso()
    method peligrosidad() = contenido.peligrosidad()/2 
    method bultos() = 2 
}
