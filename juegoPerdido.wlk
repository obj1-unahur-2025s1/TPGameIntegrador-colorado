import nivelDos.*
import nivelUno.*

object perder {
  const property image = "gameOver.png"
  const property position = game.origin()

    method pantalla(){
      game.clear()
      game.addVisual(self)
    }
}