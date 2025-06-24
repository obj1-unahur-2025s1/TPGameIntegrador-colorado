import musica.*
import nivelDos.*
// import nivelUno.*
import introduccion.*
import protagonista.*

object gameOver {
    var property image = "gameOverUno.png"
    const property position = game.origin()

    const musicaAmbiente = gameOverM

    method reproducirMusica() {
      musicaAmbiente.sonar()
      musicaAmbiente.loop()
    }
    
    method image() = image

    method iniciar(){
      self.reproducirMusica()
      game.addVisual(self)
      self.intercambiarFondo()
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


