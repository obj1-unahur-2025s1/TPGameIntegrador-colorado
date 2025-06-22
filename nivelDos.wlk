import juego.*
import introduccion.*
import protagonista.*
import objetos.*
import enemigos.*

object nivel2{
    const property image = "fondoNivel2.png" 
    const property position = game.origin()

    method iniciar() {
    
    game.addVisual(self)
    game.addVisual(puertaNivel2)    
    game.addVisual(patoUno)
    game.addVisual(patoDos)
    game.addVisual(patoTres)
    game.addVisual(patoCuatro)
    game.addVisual(patoCinco)
    game.addVisual(arma)
    game.addVisual(cura1)
    game.addVisual(cura2)
    game.addVisual(llaveNivel2)
    game.addVisual(carlitos)

    patoUno.activarMovimientoPato()
    patoDos.activarMovimientoPato()
    patoTres.activarMovimientoPato()
    patoCuatro.activarMovimientoPato()
    patoCinco.activarMovimientoPato()

    // self.aparecerPatoDer()
    // self.aparecerPatoIzq()


    game.onCollideDo(carlitos, {algo=>algo.interactuar()}) 

    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }
    }

    // method aparecerPatoDer() {
    //     game.onTick(4000, "PatoDer", {new Pato().aparecer()})   // SI HAGO PATOS COMO CLASE PUEDO HACER Q APAREZCAN UN MONTON PERO NO PUED HACERLOS DESAPARECER DESP 
    // }
    // method aparecerPatoIzq() {
    //     game.onTick(3000, "PatoIzq", {new Pato(image= "patoLV3-F2.png").aparecer()})
    // }

}

object introNivel2 {
    const property image = "introNivel2.png" 
    const property position = game.origin()
    method arrancar(){
        game.clear()
        game.addVisual(self)
        keyboard.k().onPressDo({nivel2.iniciar()})
    }
}
