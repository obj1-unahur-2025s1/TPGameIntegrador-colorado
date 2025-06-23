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
  game.addVisual(antorcha1D)
  game.addVisual(antorcha2D)
  game.addVisual(antorcha3D)
  game.addVisual(antorcha4D)
  game.addVisual(antorcha5D)
  game.addVisual(antorcha6D)
  game.addVisual(antorcha7D)
  game.addVisual(antorcha8D)
  game.addVisual(puertaNivel1Dificil)
  game.addVisual(pistaNivel1D)
  game.addVisual(cuadro1D)
  game.addVisual(new Cofre(position = game.at(18, 1.5), contenido = llaveNivel1, decir = "recogiste la llave de la puerta"))
  game.addVisual(carlitos)
    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }
	game.onCollideDo(carlitos, {algo=>algo.interactuar()}) 

  }




}

