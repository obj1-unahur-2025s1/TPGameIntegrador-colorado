import protagonista.*
import sistema1.*
import wollok.game.*



object nivel1D {
  const property image = "fondoNivel1v2.png"
  var property position = game.origin()

  // const llaveUno = new Llave()

  method iniciar() {
  game.addVisual(self)
  sistema.iniciarAntorchasNivelDificil()
  sistema.iniciarCofre()
  sistema.iniciarPuerta()
  sistema.iniciarPistaDificil()
  game.addVisual(carlitos)
	game.onCollideDo(carlitos, {algo=>algo.interactuar()})
  }
}