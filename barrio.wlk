// elementos que pueden ser atacados

class Hogar{
  var nivelDeMugre
  const confort
  
  method esBueno() = nivelDeMugre * 0.5 <= confort
  
  method recibirAtaque(unaPlaga) {nivelDeMugre = nivelDeMugre + unaPlaga.nivelDeDaño()}
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

  method recibirAtaque(unaPlaga){
    if (unaPlaga.transmiteEnfermedades()){
      nivelDeSalud = nivelDeSalud - unaPlaga.nivelDeDaño()
    }
  }
}


// barrios

class Barrio{
  var elementos 
  
  method esElementoBueno(unElemento) = unElemento.esBueno()
  
  method elementosBuenos() = elementos.filter{e => e.esBueno()}.size()
  
  method elementosNoBuenos() = elementos.filter{e => not e.esBueno()}.size()
  
  method esBarrioCopado() = self.elementosBuenos() > self.elementosNoBuenos()
}






