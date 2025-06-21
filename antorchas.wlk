import llave.*
import juego.*



object antorcha1{
  var prendida = true 

  method image() = if (prendida) "antorchaPrendida.png" else "antorchaApagada.png"
  method position() = game.at(6, 10)

  method interactuar() {
    self.alternar()
    llave.aparecer()
  }

  method alternar() {
    prendida = !prendida
  }

  method estaPrendida() = prendida
}

object antorcha2{
  var prendida = true 

  method image() = if (prendida) "antorchaPrendida.png" else "antorchaApagada.png"
  method position() = game.at(7, 10)

  method interactuar() {
    self.alternar()
    llave.aparecer()

  }

  method alternar() {
    prendida = !prendida
  }

  method estaPrendida() = prendida
}

object antorcha3{
  var prendida = true 

  method image() = if (prendida) "antorchaPrendida.png" else "antorchaApagada.png"
  method position() = game.at(8, 10)

  method interactuar() {
    self.alternar()
    llave.aparecer()

  }

  method alternar() {
    prendida = !prendida
  }

  method estaPrendida() = prendida
}
