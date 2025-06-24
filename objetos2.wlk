import protagonista.*
import objetos1.*


class Imagen inherits Visual{
    override method interactuar(){ }
}

/// ARMA
object arma  {
  method image() = "arma.png"
  method position()= game.at(10,2)
  method interactuar() {
    carlitos.recogerArma()
    game.removeVisual(self)
  }
}

/// CURACIONES
class Cura inherits Visual{
  const cura = 50
  override method image() = "cura.png" 
  override method interactuar() {
    carlitos.recuperarVida(cura)
    game.removeVisual(self)
  }
}

