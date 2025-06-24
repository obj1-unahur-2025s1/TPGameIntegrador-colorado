import protagonista.*
import objetos2.*
import objetos1.*
import enemigos.*
import configuracionTeclas.*
import sistema2.*
import nivelUno.*

object nivel2{
    const property image = "fondoNivel2v2.png" 
    const property position = game.origin()

    method iniciar() {
    game.clear()
    game.addVisual(self) 
    sistema2.iniciarCuras()
    sistema2.iniciarPatos()
    sistema2.darleMovimientoAPatos()
    game.addVisual(carlitos)
    teclado.config()
    game.onCollideDo(carlitos, {algo=>algo.interactuar()})
    }
}


object introNivel2 {
    const property image = "introNivel2.png" 
    const property position = game.origin()
    method iniciar(){
        game.addVisual(self)
        keyboard.k().onPressDo({nivel2.iniciar()})
    }
}



