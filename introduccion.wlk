import nivelDos.*
import juego.*
import modosJuego.*
object intro {
  const property image = "controles.png"
  const property position = game.origin()

  method iniciar() {
    game.addVisual(self)
    game.schedule(2000, {=> introModo.iniciar()}) // inicia el nivel en el modo que se indique 
    keyboard.space().onPressDo({nivel1.iniciar()})
  }
}