import protagonista.*

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


// LLAVES CLASES Y OBJETOS

object llave{ 
  method image() = "llave.png"
  method position() = game.center()
  method aparecer() {
    if(antorcha1.estaPrendida() and antorcha3.estaPrendida() and !antorcha2.estaPrendida())
    game.addVisual(self)
  }
  method interactuar() {
    carlitos.recogerLLave()
    game.removeVisual(self)
  }
}

object llaveNivel1 {
  
}


/// PUERTAS CLASES Y OBJETOS

class Puerta{
  const position 
  var abierta = false 

  method image() = if (!abierta) "puertaUnoCerrada.png" else "puertaUnoAbierta.png"
  method position() = position

  method interactuar(){
  if(carlitos.inventario() == llaveNivel1){
     self.abrirPuerta()
     carlitos.vaciarInventario()
  }
  if(self.estaAbierta()){
    game.say(self, "ir a nive l2 cambiar")
  }
  else{
    game.say(self, "necesitas una llave")
  }
  }

 

  method abrirPuerta() {
    abierta = !abierta
  }

  method estaAbierta() = abierta
}


