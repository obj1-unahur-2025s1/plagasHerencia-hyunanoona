//plagas

class Plaga{
  var poblacion
  
  method transmiteEnfermedades() = poblacion > 10

  method atacar(unElemento){
    poblacion = poblacion + (poblacion*10)/100
    unElemento.recibirAtaque(self)
  }
}

class Cucarachas inherits Plaga{
  var pesoPromedio
  
  method nivelDeDaño() = poblacion * 0.5
  
  override method transmiteEnfermedades() = super() and pesoPromedio >= 10

  override method atacar(unElemento){
    super(unElemento) 
    pesoPromedio = pesoPromedio + 2
  }
}

class Pulgas inherits Plaga{
  method nivelDeDaño() = poblacion * 2
}

class Garrapatas inherits Pulgas{
  override method atacar(unElemento){
    poblacion = poblacion + (poblacion*20)/100
    unElemento.recibirAtaque(self)
  }
}

class Mosquitos inherits Plaga{
  override method transmiteEnfermedades() = super() and poblacion % 3 == 0
}
