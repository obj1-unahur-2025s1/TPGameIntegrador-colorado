import juego.*
import antorchas.*


object llave{ 
  method image() = "llave.png"
  method position() = game.center()
  method aparecer() {
    if(antorcha1.estaPrendida() and antorcha3.estaPrendida() and !antorcha2.estaPrendida())
    game.addVisual(self)
  }
}

