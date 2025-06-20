import llave.*
import protagonista.*
import enemigos.*
import antorchas.*
import cofres.*
import cuadros.*
import puertas.*


object juego {
  const property image = "fondo1.png"
  var property position = game.origin()
  const ant1 = new Antorchas(position = game.at(6, 10))
  const ant2 =new Antorchas(position = game.at(7, 10))
  const ant3 = new Antorchas(position = game.at(8, 10))
  const llave1 = new Llave()


  method iniciar() {
  game.addVisual(self)
  game.addVisual(ant1)
  game.addVisual(ant2)
  game.addVisual(ant3)
  game.addVisual(new Puerta(position = game.at(17, 11)))
  game.addVisual(new Cuadro(image = 'cuadroUno.png',position = game.at(2, 12) , contenido = "hola" ))
  game.addVisual(escalera)
  game.addVisual(espejo)
  game.addVisual(new Cofre(position = game.at(4, 1), contenido = []))
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

  method aparecerLLave() {
    if (ant1.estaPrendida() and ant3.estaPrendida()){
      game.addVisual(llave1)  
    }
     // hacer que la llave aparezca cuando la ant1 y ant3 esten encendidas
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
  method position() = game.at(5,10)
}
object escalera {
  method image() = "escalera.png"
  method position() = game.at(17, 5)
}




