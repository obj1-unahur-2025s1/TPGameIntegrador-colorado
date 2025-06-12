object juego {
  method iniciar() {

	game.width(20)
	game.height(14)
	game.addVisualCharacter(carlitos) // metodo para hacer visible a carlitos y que se mueva
  game.boardGround("fondo.png")

	game.onCollideDo(carlitos, {algo=>algo.interactuar()}) //metodo para cuando carlos colisiona con algo interactua con el metodo de ese algo , la idea es hacer que con el asesino pierda y con el arma que la tome
    //           game.schedule(20000, {game.removeTickEvent("aparece asesino")})
	self.generarAsesino()
	//self.generarArma()
  }

  method generarAsesino() {
	game.onTick(1000, "aparece asesino", {new Animal(image = "patoAsesino(2)Full.png").aparecer()})  //cada mil milisegundos genera un nuevo asesino
  }

   method generarArmas() {
	game.schedule(500, {self.generarArma()}) // por unica vez genera un arma 
  }

  method generarArma() {
	const pos = self.posicionAleatoria()
	const arma = new Arma(position = pos)
	game.addVisual(arma)
	arma.animarse()
  }

method posicionAleatoria() = game.origin()
	//game.at(0.randomUpTo(game.width()),0.randomToUp(game.height()))




}

object carlitos {
  var property position = game.center()
  var arma = null

  method image() = "personaje2.png"

  //method position() = position

  //method position(nueva) {position = nueva}
}

class Animal {
  const image 
  var property position = game.origin()
  method interactuar() {
	// mate a carlitos
  }

   method image() = image

  method aparecer() {
   game.addVisual(self)
	//position = juego.posicionAleatoria()
	//self.moverseAleatoriamente()
  }

  method moverseAleatoriamente() {}

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