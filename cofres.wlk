import protagonista.*
import enemigos.*
import juego.*
 
// clase madre 
class Cofre {
const position 
var imagen  
const contenido

  method image() = imagen
  method position() = position // game.at(4, 10)

  method interactuar() {
    carlitos.recoger(contenido)
  }
}

class Cofretrampa inherits Cofre{
    var property nombreNivel 

    override method interactuar() {
      super()
      nombreNivel.generarPatos()
}
}

