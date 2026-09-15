object camion {
    const carga=[]
    method cargar(cosa) {
      carga.add(cosa)
    }
    method descargar(cosa) {
      carga.remove(cosa)
    }
    method peso()=1000+carga.sum{cosa=>cosa.peso()}
    method sonTodosPares() = carga.all{cosa=>cosa.even()}  
    method cosaPesa(peso) = carga.any{cosa=>cosa.peso()==peso}
    method primeraCosaPeligrosa(nivel) = carga.find{cosa=>cosa.peligrosidad()>=nivel}
    method cosasPeligrosas(nivel) = carga.filter{cosa=>cosa.peligrosidad()>=nivel}
    method masPeligrosoQue(cosaPeligrosa) = carga.filter{cosa=>cosa.peligrosidad()>cosaPeligrosa.peligrosidad()}
    method estaExcedido() =self.peso()>2500
    method puedeCircular(nivelMaximo) = self.estaExcedido() or carga.all{cosa=>cosa.peligrosidad()<nivelMaximo}
    method tieneAlgoQuePesaEntre(pesoMinimo,pesoMaximo) = carga.find{cosa=>cosa.peso().between(pesoMinimo, pesoMaximo)} 
    method cosaMasPesada() =carga.max{cosa=>cosa.peso()} 
}
