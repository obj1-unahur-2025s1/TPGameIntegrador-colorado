import objetos.*
import protagonista.*
import enemigos.*
import nivelDos.*
import nivelDosDificil.*


object nivel1Dificil {
  const property image = "fondoNivel1v2.png"
  var property position = game.origin()


  method iniciar() {
  game.addVisual(self)


    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }

  
	game.onCollideDo(carlitos, {algo=>algo.interactuar()}) 

  }




}

