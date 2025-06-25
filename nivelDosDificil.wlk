import introduccion.*
import protagonista.*
import objetos2.*
import objetos1.*
import enemigos.*
import configuracionTeclas.*
import sistema2.*
// import nivelUno.*

object nivel2Dificil{
    const property image = "fondoNivel2v2.png" 
    const property position = game.origin()

    method iniciar() {
    // sistema2.iniciarPantalla()
    // game.schedule(10000, {sistema2.eliminarPantalla()}) 
    game.clear()   
    game.addVisual(self) 
    sistema2.reiniciar()
    sistema2.iniciarArmaD()
    sistema2.iniciarCuras()
    sistema2.iniciarPuerta()
    sistema2.iniciarPatoGigante()
    sistema2.aparecerLlave()
    sistema2.darleMovimientoPatoGigante()
    game.addVisual(carlitos)
    teclado.config()

    game.onCollideDo(carlitos, {algo=>algo.interactuar()})
    
    }
}


object introNivel2Dificil {
    const property image = "introNivel2Dificil.png" 
    const property position = game.origin()
    method iniciar(){
        game.clear()
        game.addVisual(self)
        keyboard.l().onPressDo({nivel2Dificil.iniciar()})

    }
}
