import protagonista.*
import enemigos.*



object juego {
  method iniciar() {

	game.width(20)
	game.height(14)
	game.addVisualCharacter(carlitos) // metodo para hacer visible a carlitos y que se mueva
  game.addVisual(new Antorchas(position = game.at(4, 12)))
  game.addVisual(new Antorchas(position = game.at(6, 12)))
  game.addVisual(new Antorchas(position = game.at(8, 12)))
  game.addVisual(new AntorchasApagadas(position = game.at(5, 12)))
  game.addVisual(new AntorchasApagadas(position = game.at(7, 12)))
  game.addVisual(new CuadroUno())
  game.addVisual(new CuadroTres())
  game.addVisual(escalera)
  game.addVisual(espejo)
  game.addVisual(cofre)
  game.addVisual(caja)
  game.boardGround("fondo.png")
  

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
  method position() = game.at(13, 10)
}

object espejo {
  method image() = "espejoPiso.png"
  method position() = game.at(11, 10)
}
object escalera {
  method image() = "escalera.png"
  method position() = game.at(17, 10)
}
class Cuadros {
  method image() 
  method position() 
}

class CuadroUno inherits Cuadros{
  override method image() = "cuadroUno.png"
  override method position() = game.at(1, 11.5)
}
class CuadroTres inherits Cuadros{
  override method image() = "cuadroTres.png"
  override method position() = game.at(10, 11.5)
}
object cofre {
  method image() = "cofreCerrado.png"
  method position() = game.at(4, 10)
}

class Antorchas{
  const position 
  method image() = "antorchaPrendida.png"
  method position() = position
}
class AntorchasApagadas inherits Antorchas{
  override method image() = "antorchaApagada.png"
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