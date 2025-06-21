import juegoPerdido.*
import juego.*
import modosJuego.*


object carlitos {
  var property position = game.center()
  var arma = null
  var vida = 100
  var tieneLlave = false
  var inventario = null

  method recogerLLave(){
    tieneLlave = true
  }

  method recoger(algo) {
    inventario = algo
  }

  method vaciarInventario() {
    inventario = null
  }

  method inventario() = inventario

  method sacarLLave() {
    tieneLlave = false
  }

  method tieneLlave() = tieneLlave


  method image() = if(vida > 0) "protagonista.png" else 'protagonista_muerto.png'


method dificultad(nivelDificultad) {
  //config  
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
  if (nuevaPosicion.x() >= 1 and nuevaPosicion.x() < 19 and nuevaPosicion.y() >= 1 and nuevaPosicion.y() < 11) {
     self.position(nuevaPosicion)
    }
  }

  method hablar(contenido) {
    game.say(self, contenido)
  }

}
