import protagonista.*
import enemigos.*
import juego.*
 
// clase madre 
class Cofre {
const position  
const contenido
var abierto = false

  method image() = if(abierto == false ) 'cofreCerrado.png' else 'cofreAbierto.png'
  method position() = position // game.at(4, 10)

  method interactuar() {
    if(carlitos.tieneLlave()){
       self.abrir()
       carlitos.sacarLLave()
    }
    else{
      game.say(self, "necesitas una llave")
    }
   
  }

  method abrir() {
    abierto = !abierto
  }
}


