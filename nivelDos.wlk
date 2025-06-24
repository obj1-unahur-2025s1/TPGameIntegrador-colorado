import introduccion.*
import protagonista.*
import objetos2.*
import enemigos.*
import configuracionTeclas.*
import sistema2.*
// import nivelUno.*

object nivel2{
    const property image = "fondoNivel2v2.png" 
    const property position = game.origin()


    method iniciar() {
    sistema2.iniciarPantalla()
    game.schedule(10000, {sistema2.eliminarPantalla()})
    game.addVisual(self) 
    game.addVisual(arma)
    sistema2.iniciarCuras()
    sistema2.iniciarPatos()
    sistema2.darleMovimientoAPatos()
    game.addVisual(carlitos)
    teclado.config()
    }
}


object introNivel2 {
    const property image = "introNivel2.png" 
    const property position = game.origin()
    method iniciar(){
        game.clear()
        game.addVisual(self)
        game.schedule(5000, {=> nivel2.iniciar()})
    }
}



