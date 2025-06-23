import juego.*
import introduccion.*
import protagonista.*
import objetos.*
import enemigos.*



object nivel2SinPatos {
    const property image = "fondoNivel2.png" 
    const property position = game.origin()

    method iniciar() {
    
    game.addVisual(self) 
    game.addVisual(puertaSotanoEntrada)
    game.addVisual(carlitos)

    game.onCollideDo(carlitos, {algo=>algo.interactuar()}) 

    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }
    }



}