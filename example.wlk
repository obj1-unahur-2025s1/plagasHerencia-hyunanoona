// elementos que pueden ser atacados

class Hogar{
  var nivelDeMugre
  const confort
  
  method esBueno() = nivelDeMugre <= confort * 0.5
  
  method recibirAtaque(unaPlaga) {nivelDeMugre = nivelDeMugre + unPlaga.nivelDeDaño()}
}

class Huerta{
  var capacidadDeProduccion
  var nivelMinimo
  
  method esBueno() = capacidadDeProduccion > nivelMinimo
  
  method recibirAtaque(unaPlaga) {
    capacidadDeProduccion = capacidadDeProduccion - (unaPlaga.nivelDeDaño()*10)/100
    if (unaPlaga.transmiteEnfermedades()) {
      capacidadDeProduccion = capacidadDeProduccion - 10
    }
  }
}

class Mascota{
  var nivelDeSalud
  
  method esBueno() = nivelDeSalud > 250
}


// barrios

class Barrio{
  var elementos 
  
  method esElementoBueno(unElemento) = unElemento.esBueno()
  
  method elementosBuenos() = elementos.filter{e => e.esBueno()}.size()
  
  method elementosNoBuenos() = elementos.filter{e => not e.esBueno()}.size()
  
  method esBarrioCopado() = self.elementosBuenos() > self.elementosNoBuenos()
}


//plagas

class Plaga{
  const poblacion
  
  //method nivelDeDaño() = poblacion
  
  method transmiteEnfermedades() = poblacion > 10
}

class Cucarachas inherits Plaga{
  var pesoPromedio
  
  method nivelDeDaño() = poblacion * 0.5
  
  override method transmiteEnfermedades() = super() and pesoPromedio >= 10
}

class Pulgas inherits Plaga{
  method nivelDeDaño() = poblacion * 2
}

class Garrapatas inherits Pulgas{
  
}

class Mosquitos inherits Plaga{
  override method transmiteEnfermedades() = super() and poblacion % 3 == 0
}






