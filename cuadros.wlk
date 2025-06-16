import protagonista.*
import juego.*
import wollok.game.*
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

