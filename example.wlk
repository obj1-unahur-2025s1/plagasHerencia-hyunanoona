// elementos que pueden ser atacados

class Hogar{
  const nivelDeMugre
  const confort
  
  method esBueno() = nivelDeMugre <= confort * 0.5
}

class Huerta{
  const capacidadDeProduccion
  var nivelMinimo
  
  method esBueno() = capacidadDeProduccion > nivelMinimo
}

class Mascota{
  const nivelDeSalud
  
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
  var poblacion
  method transmiteEnfermedades() = poblacion > 10
}

class Cucarachas inherits Plaga{
  var pesoPromedio
  
  method nivelDeDaño() = poblacion * 0.5
  
  override method transmiteEnfermedades() = super() and pesoPromedio >= 10
}

class Pulgas{
  method nivelDeDaño() = poblacion * 2
}










// elementos que pueden ser atacados

class Hogar{
  const nivelDeMugre
  const confort
  
  method esBueno() = nivelDeMugre <= confort * 0.5
}

class Huerta{
  const capacidadDeProduccion
  var nivelMinimo
  
  method esBueno() = capacidadDeProduccion > nivelMinimo
}

class Mascota{
  const nivelDeSalud
  
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
  var poblacion
  method transmiteEnfermedades() = poblacion > 10
}

class Cucarachas inherits Plaga{
  var pesoPromedio
  
  method nivelDeDaño() = poblacion * 0.5
  
  override method transmiteEnfermedades() = super() and pesoPromedio >= 10
}

class Pulgas{
  method nivelDeDaño() = poblacion * 2
}










