import nivelUno.*
import introduccion.*
import protagonista.*
import objetos.*
import enemigos.*

object nivel2Dificil{
    const property image = "fondoNivel2.png" 
    const property position = game.origin()

    method iniciar() {
    
    game.addVisual(self)   
    game.addVisual(arma)
    game.addVisual(cura1)
    game.addVisual(cura2)
    game.addVisual(carlitos)

    // patoGigante.activarMovimientoPato()
    patoGigante.perseguirACarlitos() // ver si funciona 

    game.onCollideDo(carlitos, {algo=>algo.interactuar()}) 

    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }
    }

}

object introNivel2Dificil {
    const property image = "introNivel2.png" 
    const property position = game.origin()
    method arrancar(){
        game.clear()
        game.addVisual(self)
        keyboard.k().onPressDo({nivel2Dificil.iniciar()})
    }
}