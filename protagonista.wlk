import juegoPerdido.*
import juego.*
import modosJuego.*


object carlitos {
  var property position = game.center()
  var arma = null
  var inventario = []
  var vida = 100


  method image() = if(vida > 0) "protagonista.png" else 'protagonista_muerto.png'


method dificultad(nivelDificultad) {
  //config  
}
method recoger(contenido) {
  inventario.add(contenido)
}


method recogerArma(armaAgarrada) { // solo puede llevar un arma sola
  arma = armaAgarrada
}


method recibirDaño(daño) {
   vida = (vida-daño).max(0)
}


method recuperarVida(curacion) {
  vida = (vida + curacion.cura()).min(100)
}

method morir() {
    if(vida == 0){
      perder.pantalla()
    }
}

method move(nuevaPosicion) {
  if (nuevaPosicion.x() >= 0 and nuevaPosicion.x() < 18 and nuevaPosicion.y() >= 0 and nuevaPosicion.y() < 12) {
     self.position(nuevaPosicion)
    }
  }

  method hablar(contenido) {
    game.say(self, contenido)
  }

}
