import introduccion.*
import juego.*
import protagonista.*
import nivelUnoDificil.*


object introModo {
  const property image = "modosJuego.png" 
  var property position = game.origin()

  
  method iniciar() {  
    game.addVisual(self)
    
    //boton  1 --> Modo Normal
    keyboard.num(1).onPressDo({
    //   game.sound().play() agregar sonido
      // self.modoNormal()
      nivel1.iniciar()
    })

    //boton  2 --> Modo Dificil
    keyboard.num(2).onPressDo({
    //   game.sound().play() agregar sonido
      // self.modoDificil()
      nivel1Dificil.iniciar()  // config
    })

  }

}