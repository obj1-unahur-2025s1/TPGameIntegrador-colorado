import objetos.*
import nivelDos.*
import nivelDosDificil.*
import protagonista.*


object sotano {
    const property image = "fondoSotano.png"
    const property position = game.origin()

    method iniciar() { 
        game.addVisual(self)
        game.addVisual(pistaUno)
        game.addVisual(puertaSotanoSalida)
        game.addVisual(new Cofre(position = game.at(1, 8), contenido = llaveNivel2, decir = "recogiste la llave de la reja"))
        game.addVisual(carlitos)
        



    game.onCollideDo(carlitos, {algo=>algo.interactuar()}) 

    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }
    }

}

object pistaUno {
    method image() = "pistaUnoSotano.png" 
    method position() = game.at(17,10)
    method interactuar() {
        papel.mostrar()
    }
}

object papel {
    method image() = "pistaSotano.png" 
    method position() = game.origin() 
    method mostrar() {
      game.addVisual(self)
      game.schedule(2000, {game.removeVisual(self)})
    }
}