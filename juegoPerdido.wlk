import nivelDos.*
import nivelUno.*
import introduccion.*

object gameOver {
    var property image = "gameOverUno.png"
    const property position = game.origin()
    method image() = image
    method iniciar(){
      // game.clear() 
        game.addVisual(self)
        self.intercambiarFondo()
        keyboard.space().onPressDo({intro.iniciar()})
    }

  method intercambiarFondo() {
    game.onTick(200, "cambiarGameOver", {self.cambiarImage()})
  }

  method cambiarImage(){
    if (self.image() == "gameOverDos.png"){
        image = "gameOverUno.png"
    }else{
        image = "gameOverDos.png"
    }
    
  }
  
}