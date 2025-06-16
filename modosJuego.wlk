import introduccion.*
import juego.*
import protagonista.*

object introModo {
  const property image = "modosJuego.png" 
  var property position = game.origin()

  
  method iniciar() {  
    game.addVisual(self)
    
    //boton  1 --> Modo Normal
    keyboard.num(1).onPressDo({
    //   game.sound().play() agregar sonido
      self.modoNormal()
    })

    //boton  2 --> Modo Dificil
    keyboard.num(2).onPressDo({
    //   game.sound().play() agregar sonido
      self.modoDificil()
    })

  }

  method interaccion() {  }//nada
  
  //Modo facil
  method modoNormal() { 
    carlitos.dificultad(1)
    game.schedule(500, {=>intro.iniciar()})
   }

  //Modo dificil
  method modoDificil() {
    carlitos.dificultad(2)
    game.schedule(500, {=>intro.iniciar()})
  }
}