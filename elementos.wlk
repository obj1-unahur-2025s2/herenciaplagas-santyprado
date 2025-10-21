import plagas.*

class Hogar{
    var nivelMugre

    var nivelConfort

    method esBueno() =  nivelMugre <= (nivelConfort)/2

    method esAtacadoPorPlaga(unaPlaga) {
      nivelMugre += unaPlaga.nivelDaño()
      unaPlaga.atacarElemento()
    }
}

class Huerta{

    var capacidad

    method esBueno() = capacidad > nivelMinimo.valor()

    method esAtacadoPorPlaga(unaPlaga) {
      capacidad-=  if(unaPlaga.transmiteEnfermedad()) (10 + unaPlaga.nivelDaño() * 0.1) else (unaPlaga.nivelDaño() * 0.1)
      unaPlaga.atacarElemento()
    }
}

object nivelMinimo {
  var property valor 
}

class Mascota{

    var property nivelSalud 

    method esBueno() = nivelSalud > 250

    method esAtacadoPorPlaga(unaPlaga) {
      nivelSalud-= if(unaPlaga.transmiteEnfermedad()) unaPlaga.nivelDaño() else 0 
      unaPlaga.atacarElemento()
    }
}



