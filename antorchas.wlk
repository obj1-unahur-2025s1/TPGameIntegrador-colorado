import llave.*
import juego.*

class Antorcha{
  var prendida = true 

  method image() = if (prendida) "antorchaPrendida.png" else "antorchaApagada.png"
  method position() 

  method interactuar() {
    self.alternar()
    llave.aparecer()
  }

  method alternar() {
    prendida = !prendida
  }

  method estaPrendida() = prendida
}
object antorcha1  inherits Antorcha{
  override method position() = game.at(6, 10)

}

object antorcha2 inherits Antorcha{
  override method position() = game.at(7, 10)

}

object antorcha3 inherits Antorcha{
  override method position() = game.at(8, 10)

}
