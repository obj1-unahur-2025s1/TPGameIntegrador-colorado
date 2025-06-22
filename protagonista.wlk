import enemigos.*
import juegoPerdido.*
import juego.*
import modosJuego.*
import nivelDos.*



object carlitos {
  var property position = game.center()
  var tieneArma = true
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

  method recogerArma() { 
    tieneArma = true
    game.say(self, "Ahora si podre destruir a los enemigos")
  }
  method tieneArma() = tieneArma 

  method recibirDaño(daño) {
    if (!tieneArma){
      game.say(self, "Necesitas tener un arma para matar a los patos")
    }
    vida = (vida-daño).max(0)
    game.say(self, vida.toString() + " es tu vida ")

  }

  // method recuperarVida(curacion) {
  //   vida = (vida + curacion.cura()).min(100)
  // }

  method morir() {
      if(vida == 0){
        perder.pantalla()  // VER PQ NO APARECE LA PANTALLA DE GAME OVER
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
