import musica.*
import nivelDos.*
// import nivelUno.*
import introduccion.*
import protagonista.*



object gameOver {
    var property image = "gameOverUno.png"
    const property position = game.origin()
    
    method image() = image

    method iniciar(){
      game.clear()
      musica.clear()
      game.sound("gameOver.mp3").play()
      game.addVisual(self)
      self.intercambiarFondo()
      keyboard.enter().onPressDo({
        intro.iniciar()
        game.sound("gameOver.mp3").stop()
      }) 
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

object final {
   var property image = "ganaste.png"
    const property position = game.origin()
    
    method image() = image

    method iniciar(){
      game.addVisual(self)
    }
}


