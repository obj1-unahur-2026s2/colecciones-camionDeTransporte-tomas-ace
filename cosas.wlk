object knightRider {
    method peso() = 500
    method peligrosidad() = 10 
}
object bumblebee {
    method peso() = 800
    method peligrosidad() = 10 
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
}
object arenaAGranel {
    var peso = 10
    method aumentarPeso(nro) {
      peso+=nro
    }
    method sacarPeso(nro) {
      peso-=nro
    }
    method peligrosidad() = 1 
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
}
object contenedorPortuario {
    const cosas=[]
    method peso() = 100+cosas.sum{cosa=>cosa.peso()}
    method peligrosidad() = cosas.max({cosa=>cosa.peligrosidad()},{0})

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
}
object embalajeDeSeguridad {
    var contenido = contenedorPortuario
    method cambiarContenido(nuevoContenido) {
      contenido=nuevoContenido
    }
    method peso() = contenido.peso()
    method peligrosidad() = 10 
}
