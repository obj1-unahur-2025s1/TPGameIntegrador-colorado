import objetos.*
import protagonista.*
import enemigos.*
import nivelDos.*


object nivel1 {
  const property image = "fondoNivel1v2.png"
  var property position = game.origin()

  // const llaveUno = new Llave()

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
  game.addVisual(new Puerta())
  game.addVisual(pistaNivel1)
  game.addVisual(cuadroWollok)
  game.addVisual(cuadroVocal)
  //game.addVisual(new Cuadro(image = 'cuadroUno.png',position = game.at(1, 11) , contenido = "hola" ))
  //game.addVisual(espejo) para el nivel dificil
  game.addVisual(new Cofre(position = game.at(18, 1.5), contenido = llaveNivel1, decir = "recogiste la llave de la puerta"))
  game.addVisual(carlitos)


    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }

  
                      //          game.whenCollideDo(carlitos,{elemento => game.say(carlitos, carlitos.hablar(elemento.contenido()))})
	game.onCollideDo(carlitos, {algo=>algo.interactuar()}) //metodo para cuando carlos colisiona con algo interactua con el metodo de ese algo , la idea es hacer que con el asesino pierda y con el arma que la tome
    //           game.schedule(20000, {game.removeTickEvent("aparece asesino")})
	//self.generarPato()
  }

  // method generarPato() {game.onTick(1000, "aparece asesino", {new Animal(image = "pato_malvado.png").aparecer()})  //cada mil milisegundos genera un nuevo asesino}

   // method generarPatos() {game.schedule(500, {self.generarPato()})}



}







// cosas 
object caja {
  method image() = "cajaCerrada.png"
  method position() = game.at(15, 10)
}

object espejo {
  method image() = "espejoPiso.png"
  method position() = game.at(5,10)
}
object escalera {
  method image() = "escalera.png"
  method position() = game.at(17, 5)
}
