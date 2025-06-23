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
  game.addVisual(antorcha1)
  game.addVisual(antorcha2)
  game.addVisual(antorcha3)
  game.addVisual(antorcha4)
  game.addVisual(antorcha5)
  game.addVisual(antorcha6)
  game.addVisual(antorcha7)
  game.addVisual(antorcha8)
  game.addVisual(puertaNivel1Dificil)
  game.addVisual(pistaNivel1)
  game.addVisual(cuadroWollok)
  //game.addVisual(espejo) para el nivel dificil
  game.addVisual(new Cofre(position = game.at(18, 1.5), contenido = llaveNivel1, decir = "recogiste la llave de la puerta"))
  game.addVisual(carlitos)


    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }

  
	game.onCollideDo(carlitos, {algo=>algo.interactuar()}) 

  }




}

