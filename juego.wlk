import protagonista.*
import enemigos.*
import antorchas.*
import cofres.*
import cuadros.*
import puertas.*


object juego {
  const property image = "fondo1.png"
  var property position = game.origin()
  method iniciar() {
  game.addVisual(self)
  game.addVisual(new Antorchas(position = game.at(6, 11)))
  game.addVisual(new Antorchas(position = game.at(7, 11)))
  game.addVisual(new Antorchas(position = game.at(8, 11)))
  game.addVisual(new Puerta(position = game.at(1, 11)))
  game.addVisual(new Puerta(position = game.at(17, 11)))
  game.addVisual(new Cuadro(image = 'cuadroUno.png',position = game.at(2, 10) , contenido = "hola" ))
  game.addVisual(escalera)
  game.addVisual(espejo)
  game.addVisual(new Cofre(position = game.at(4, 10), contenido = []))
  game.addVisual(caja)
  game.addVisual(carlitos)

  keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }

  
                      //          game.whenCollideDo(carlitos,{elemento => game.say(carlitos, carlitos.hablar(elemento.contenido()))})
	game.onCollideDo(carlitos, {algo=>algo.interactuar()}) //metodo para cuando carlos colisiona con algo interactua con el metodo de ese algo , la idea es hacer que con el asesino pierda y con el arma que la tome
    //           game.schedule(20000, {game.removeTickEvent("aparece asesino")})
	self.generarPato()
	//self.generarArma()
  }

  method generarPato() {
	game.onTick(1000, "aparece asesino", {new Animal(image = "pato_malvado.png").aparecer()})  //cada mil milisegundos genera un nuevo asesino
  }

   method generarPatos() {
	game.schedule(500, {self.generarPato()})
  }
}

// cosas 
object caja {
  method image() = "cajaCerrada.png"
  method position() = game.at(15, 10)
}

object espejo {
  method image() = "espejoPiso.png"
  method position() = game.at(3, 3)
}
object escalera {
  method image() = "escalera.png"
  method position() = game.at(17, 5)
}

object cofre {
  method image() = "cofreCerrado.png"
  method position() = game.at(4, 10)
}


class Arma {
  var image = "fusil.png"
  const position
  method interactuar(){
	//recoger arma 
  }

  method animarse() {
	
  }

  method image() = image

  method position() = position
}