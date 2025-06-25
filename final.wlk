import musica.*
import nivelDos.*
// import nivelUno.*
import introduccion.*
import protagonista.*
import objetos1.*




object gameOver {
    var property image = "gameOverUno.png"
    const property position = game.origin()
    
    method image() = image

    method iniciar(){
      game.clear()
      musica.clear()
      musicOver.iniciar()
      game.addVisual(self)
      self.intercambiarFondo()
      keyboard.space().onPressDo({
        intro.iniciar()
        musicOver.parar()
        carlitos.recuperarVida(100)
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

object musicOver{
  const property sonido = game.sound("gameOver.mp3")

  method iniciar() {
    sonido.play()
  }

  method parar() {
    sonido.stop()
  }
}



