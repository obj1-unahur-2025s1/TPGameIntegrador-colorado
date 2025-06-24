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
    sistema2.iniciarPantalla()
    game.schedule(10000, {sistema2.eliminarPantalla()})    
    game.addVisual(self) 
    game.addVisual(arma)
    sistema2.iniciarCuras()
    sistema2.iniciarPatoGigante()
    game.addVisual(carlitos)

    game.onCollideDo(carlitos, {algo=>algo.interactuar()})
    
    teclado.config()
    }
}


object introNivel2Dificil {
    const property image = "introNivel2Dificil.png" 
    const property position = game.origin()
    method iniciar(){
        game.clear()
        game.addVisual(self)
    }
}
