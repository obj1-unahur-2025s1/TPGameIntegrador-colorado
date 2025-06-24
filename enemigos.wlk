import sistema2.*
import objetos2.*
import nivelDos.*
import protagonista.*

class Enemigos inherits Visual{
  override method image() = "patoLV3-F2.png"
  var property daño = 30
  var property vida = 100
  
  method recibirDaño() {
    if(vida == 0){
        game.removeVisual(self)  
    }else{
      vida = (vida-50).max(0)
    }
  }

  override method interactuar() {
    if (carlitos.tieneArma()){
      self.recibirDaño()
    }else{
      carlitos.recibirDaño(daño)
    }
  }

  method estaMuerto() = vida == 0

  method moverse() {
    const x = 0.randomUpTo(game.width()-2).truncate(0)
    const y = 0.randomUpTo(game.height()-2).truncate(0)
    position = game.at(x,y)
  }

  method activarMovimientoPato() {
    game.onTick(3000,"MoverPato",{self.moverse()})
  }
}

class PatoGigante inherits Enemigos {  // para dificultad 2
  override method daño() = 50
  override method recibirDaño() {
     vida = (vida-25).max(0)
     self.morir()
    }

  override method interactuar(){
    if (carlitos.tieneArma()){
        self.recibirDaño()
        game.say(self, "¡Auch! me queda solo de vida " + vida.toString())
    }else{
        game.say(self, "¡Te destruire maldito!")
        carlitos.recibirDaño(self.daño())
    }
  }
    method morir() {
      if(self.estaMuerto()){
        sistema2.iniciarPatoGiganteMuerto() 
    }}
    
    override method moverse() {   
      const x = 0.randomUpTo(game.width()-3).truncate(0)
      const y = 0.randomUpTo(game.height()-3).truncate(0)
      position = game.at(x,y)
    }
}




