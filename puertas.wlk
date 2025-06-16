class Puerta{
  const position 
  var abierta = false 

  method image() = if (!abierta) "puertaUnoCerrada.png" else "puertaUnoAbierta.png"
  method position() = position

  method interactuar() {
    self.alternar()
  }

  method alternar() {
    abierta = !abierta
  }

  method puerta() = abierta
}

