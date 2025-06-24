import modosJuego.*
import objetos2.*
import musica.*



object intro {
  const property image = "historia.png"
  const property position = game.origin()

  const musicaAmbiente = ambiente

  method reproducirMusica() {
      musicaAmbiente.sonar()
      musicaAmbiente.loop()
    }
  method iniciar() {
    self.reproducirMusica()
    game.addVisual(self)
    game.schedule(10000, {=> controles.iniciar()})

  }
}

object controles {
  const property image = "controles.png"
  const property position = game.origin()

  method iniciar() {
    game.addVisual(self)
  } 
}