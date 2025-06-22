import nivelDos.*
import protagonista.*

class Enemigos{
  var property image =  "patoLV3-F1.png"
  var property position = game.origin()
  const property daño = 30

  method aparecer() {
    game.addVisual(self)
  }  

  method interactuar() {
    carlitos.recibirDaño(daño)
    if (carlitos.tieneArma()){
      game.removeVisual(self) // DESAPARECE EL PATO CUANDO COLISIONA
    }
  }

  method image() = image 

  method moverse() {
    const x = 0.randomUpTo(game.width()-2).truncate(0)
    const y = 0.randomUpTo(game.height()-2).truncate(0)
    position = game.at(x,y)
  }

  method activarMovimientoPato() {
    game.onTick(2000,"MoverPato",{self.moverse()})
  }

}

object patoGigante inherits Enemigos {  // para dificultad 2
  override method daño() = 50
}

object patoUno inherits Enemigos {

}

object patoDos inherits Enemigos {

}

object patoTres inherits Enemigos {

}

object patoCuatro inherits Enemigos {
  
}

object patoCinco inherits Enemigos {
  
}