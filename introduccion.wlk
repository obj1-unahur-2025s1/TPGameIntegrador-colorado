import protagonista.*
import modosJuego.*
import objetos2.*
import musica.*
import configuracionTeclas.*


object intro {
  const property image = "historia.png"
  const property position = game.origin()

  const musicaAmbiente = ambiente

  method reproducirMusica() {
      musicaAmbiente.sonar()
      musicaAmbiente.loop()
    }
  method iniciar() {
    teclado.config()
    self.reproducirMusica()
    game.addVisual(self)
    game.schedule(20000, {=> controles.iniciar()})

  }
}

object controles {
  const property image = "controles.png"
  const property position = game.origin()

  method iniciar() {
    game.addVisual(self)
  } 
}