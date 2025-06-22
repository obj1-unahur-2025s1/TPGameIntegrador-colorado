import protagonista.*
import nivelDos.*
// COFRE CLASES Y OBJETOS  
class Cofre {
const position  
const contenido
var abierto = false
const decir 

  method image() = if(abierto == false ) 'cofreCerrado.png' else 'cofreAbierto.png'
  method position() = position // game.at(4, 10)

  method interactuar() {
    if(carlitos.tieneLlave()){
       self.abrir()
       carlitos.sacarLLave()
       game.say(self, decir.toString())
       carlitos.recoger(contenido)
    }
    else{
      game.say(self, "necesitas una llave")
    }
   
  }

  method abrir() {
    abierto = !abierto
  }
}


// CUADROS CLASES Y OBJETOS

class Cuadro {
    var image
    var position
    var contenido

  method image() = image
  method position() = position 

  method interactuar() {
    carlitos.hablar(contenido)
  }

  
}

// ANTORCHAS CLASES Y OBJETOS 

class Antorcha{ // clase madre de las antorchas
  var prendida = true 

  method image() = if (prendida) "antorchaPrendida.png" else "antorchaApagada.png"
  method position() 

  method interactuar() {
    self.alternar()
    llaveCofre1.aparecer()
  }

  method alternar() {
    prendida = !prendida
  }

  method estaPrendida() = prendida
}
// antorchas de la parte superior del nivel 1 
object antorcha1  inherits Antorcha{
  override method position() = game.at(1, 10.3)

}

object antorcha2 inherits Antorcha{
  override method position() = game.at(2, 10.3)

}

object antorcha3 inherits Antorcha{
  override method position() = game.at(3, 10.3)

}
object antorcha4 inherits Antorcha{
  override method position() = game.at(4, 10.3)

}
object antorcha5 inherits Antorcha{
  override method position() = game.at(11, 10.3)

}
object antorcha6 inherits Antorcha{
  override method position() = game.at(12, 10.3)
}

// antorchas de la parte inferior del nivel 1
object antorcha7  inherits Antorcha{
  override method position() = game.at(13,10.3)

}

object antorcha8 inherits Antorcha{
  override method position() = game.at(14, 10.3)

}




// LLAVES CLASES Y OBJETOS

class Llave{ 
  method image() = "llave.png"
  method position() = game.center()
  method aparecer()
  method interactuar() {
    carlitos.recogerLLave()
    game.removeVisual(self)
  }
}

object llaveCofre1 inherits Llave{
  
  override method aparecer() {
    if(antorcha1.estaPrendida() and !antorcha2.estaPrendida() and antorcha3.estaPrendida() and !antorcha4.estaPrendida() and antorcha5.estaPrendida() and !antorcha6.estaPrendida())
    game.addVisual(self)
  } 
}

object llaveNivel1 { // solo la tenemos en el inventario , asi que no hace falta modelar todo lo de image ny funcionabilidad
  
}

object llaveNivel2 inherits Llave {
  override method aparecer() {
      game.addVisual(self)
  }
  override method position() = game.at(2,1)
}


/// PUERTAS CLASES Y OBJETOS

class Puerta{
  var abierta = false 
  var image =  "puertaUnoCerrada.png"

  method image() = image
  method position() = game.at(16, 10)

  method interactuar(){
  if(carlitos.inventario() == llaveNivel1){
     self.abrirPuerta()
     carlitos.vaciarInventario()
  }
  if(self.estaAbierta()){
    game.say(self, "ir a nive l2")
    introNivel2.arrancar()
  }
  else{
    game.say(self, "necesitas una llave")
  }
  }

  method abrirPuerta() {
    abierta = !abierta
    image = "puertaUnoAbierta.png"
  }

  method estaAbierta() = abierta
}


object puertaNivel2 inherits Puerta{
  override method position() = game.at(17, 10)
  override method image() =  "puertaCerradaNivel2.png"

  override method abrirPuerta() {
    abierta = !abierta
    image = "puertaAbiertaNivel2.png"
  }

  override method interactuar(){
  if(carlitos.inventario() == llaveNivel2){// 
     self.abrirPuerta()
     carlitos.vaciarInventario()
  }
  if(self.estaAbierta()){
    game.say(self, "ir a nive l3 cambiar")
    // introNivel3.arrancar() ///// paso  para nivel 3
  }
  else{
    game.say(self, "necesitas una llave")
  } 
  }

}


object arma {
  method image() = "arma.png"
  method position ()= game.at(1,10)
  method interactuar() {
    carlitos.recogerArma()
    game.removeVisual(self)
  }

}