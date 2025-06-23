import nivelDos.*
import protagonista.*

class Enemigos{
  var property image =  "patoLV3-F1.png"
  var property position = game.origin()
  const property daño = 30
  var vida = 100

  method aparecer() {
    game.addVisual(self)
  }  
  method recibirDaño() {
    if(vida == 0){
        game.removeVisual(self)  
    }else{
      vida = (vida-50).max(0)
    }
    
  }

  method interactuar() {
    if (carlitos.tieneArma()){
      self.recibirDaño()
    }else{
      carlitos.recibirDaño(daño)
    }
  }

  // method morir() {
 
  // }

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
  override method image() = "patoGiganteVivo.png"

  override method interactuar(){
    if (carlitos.tieneArma()){
      self.recibirDaño()
    }else{
      carlitos.recibirDaño(daño)
    }
  }
  // override method morir(){
  //   if(vida == 0){
  //     image = "patoGiganteMuerto.png"
  //     game.schedule(1000, {game.removeVisual(self)}) // ver si desaparece 
  //   }
  // }

  method perseguirACarlitos() {
    if(carlitos.position().x() < self.position().x())
      self.position(self.position().left(1))
    else if(carlitos.position().x() > self.position().x())
      self.position(self.position().right(1))
    
    if(carlitos.position().y() < self.position().y())
      self.position(self.position().down(1))
    else if(carlitos.position().y() > self.position().y())
      self.position(self.position().up(1))
  }
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