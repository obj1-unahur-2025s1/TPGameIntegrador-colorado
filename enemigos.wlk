import protagonista.*


class Animal {
  const image
  var property position = game.origin()
  const daño = 50
  method interactuar() {
    carlitos.recibirDaño(daño)
  }


   method image() = image


  method aparecer() {
   game.addVisual(self)
    //position = juego.posicionAleatoria()
    //self.moverseAleatoriamente()
  }


  method moverseAleatoriamente() {}


}
