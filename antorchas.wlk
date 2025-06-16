class Antorchas{
  const position 
  var prendida = true 

  method image() = if (prendida == true) "antorchaPrendida.png" else "antorchaApagada.png"
  method position() = position

  method interactuar() {
    self.alternar()
  }

  method alternar() {
    prendida = !prendida
  }

  method antorcha() = prendida
}


