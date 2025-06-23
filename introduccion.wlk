import nivelDos.*
import nivelUno.*
import modosJuego.*
object intro {
  const property image = "controles.png"
  const property position = game.origin()

  method iniciar() {
    game.addVisual(self)
    keyboard.space().onPressDo({introModo.iniciar()})
    // game.schedule(2000, {=> introModo.iniciar()}) // inicia el nivel en el modo que se indique 

  }
}