import protagonista.*

class Visual{
    var property position = game.origin()
    const img = ""

    method image() = img

    method interactuar()

    method iniciar(){
        game.addVisual(self)
    } 
}

class Imagen inherits Visual{
    override method interactuar(){ }
}

/// ARMA
object arma  {
  method image() = "arma.png"
  method position()= game.at(1,10)
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

// LLAVE
class Llave inherits Visual{ 
    override method image() = "llave.png" 
    override method interactuar() {
        carlitos.recogerLLave()
        game.removeVisual(self)
  }
}