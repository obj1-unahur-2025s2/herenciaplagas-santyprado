class Plaga {
  
  var poblacion

  method transmiteEnfermedad() = poblacion >= 10 

  method atacarElemento() {
    poblacion+= poblacion * 0.1
  }

}

class PlagaCucaracha inherits Plaga{

    var property pesoPromedio 

    method nivelDaño() = poblacion/2
    
    override method transmiteEnfermedad() = super()/*esto llama la condicion del padre*/ and (pesoPromedio >= 10) 

    override method atacarElemento() {
      super() 
      pesoPromedio += 2
    }


}

class PlagaPulga inherits Plaga{

    method nivelDaño() = poblacion * 2

}

class PlagaGarrapata inherits PlagaPulga{
    
     override method atacarElemento() {
      poblacion += poblacion * 0.2
    }
}


class PlagaMosquito inherits Plaga{

    method nivelDaño() =  poblacion

    override method transmiteEnfermedad() = super() and poblacion % 3 == 0
}
