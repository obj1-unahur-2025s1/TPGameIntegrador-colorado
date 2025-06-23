import protagonista.*
import nivelDos.*
import nivelDosDificil.*
import sotano.*
import nivelDosSinPatos.*



// COFRE CLASES Y OBJETOS  
class Cofre {
const position  
const contenido
var abierto = false
const decir 

  method image() = if(abierto == false ) 'cofreCerrado.png' else 'cofreAbierto.png'
  method position() = position // game.at(4, 10)

  method interactuar() {
    if(carlitos.tieneLlave()){
       self.abrir()
       carlitos.sacarLLave()
       game.say(self, decir.toString())
       carlitos.recoger(contenido)
    }
    else{
      game.say(self, "necesitas una llave")
    }
   
  }

  method abrir() {
    abierto = !abierto
  }
}


// CUADROS CLASES Y OBJETOS

class Cuadro {
    var image
    var position
    var contenido

  method image() = image
  method position() = position 

  method interactuar() {
    carlitos.hablar(contenido)
  }

}

object cuadroWollok {
  
  method image() = "wollokcuadro.png"
  method position() = game.at(7, 9.5)
  method interactuar() {
    pistaWollok.mostrar()
  }
}

object pistaWollok {
    method image() = "notaDelCuadro.png" 
    method position() = game.origin() 
    method mostrar() {
      game.addVisual(self)
      game.schedule(5000, {game.removeVisual(self)})
    }
}

object cuadroVocal {
  
  method image() = "signoV2.png"
  method position() = game.at(17.5, 7)
  method interactuar() {
    pistaVocal.mostrar()
  }
}
object pistaVocal {
    method image() = "notaCuadroSignoPregunta.png" 
    method position() = game.origin() 
    method mostrar() {
      game.addVisual(self)
      game.schedule(5000, {game.removeVisual(self)})
    }
}

object cuadro1D {
  
  method image() = "dioses.png"
  method position() = game.at(7, 9.5)
  method interactuar() {
    notaCuadro1D.mostrar()
  }
}

object notaCuadro1D {
    method image() = "lista1D.png" 
    method position() = game.origin() 
    method mostrar() {
      game.addVisual(self)
      game.schedule(15000, {game.removeVisual(self)})
    }
}





// ANTORCHAS CLASES Y OBJETOS 

class Antorcha{ // clase madre de las antorchas
  var prendida = false 

  method image() = if (prendida) "antorchaPrendida.png" else "antorchaApagada.png"
  method position() 

  method interactuar() {
    self.alternar()
    llaveCofre1.aparecer()
  }

  method alternar() {
    prendida = !prendida
  }

  method estaPrendida() = prendida
}
// antorchas de la parte superior del nivel 1 
object antorcha1  inherits Antorcha{
  override method position() = game.at(1, 10.3)

}

object antorcha2 inherits Antorcha{
  override method position() = game.at(2, 10.3)

}

object antorcha3 inherits Antorcha{
  override method position() = game.at(3, 10.3)

}
object antorcha4 inherits Antorcha{
  override method position() = game.at(4, 10.3)

}
object antorcha5 inherits Antorcha{
  override method position() = game.at(11, 10.3)

}
object antorcha6 inherits Antorcha{
  override method position() = game.at(12, 10.3)
}

// antorchas de la parte inferior del nivel 1
object antorcha7  inherits Antorcha{
  override method position() = game.at(13,10.3)

}

object antorcha8 inherits Antorcha{
  override method position() = game.at(14, 10.3)

}

class AntorchaDificil inherits Antorcha {
  var contador = 0
  override method image()= if(contador==0) "zeus.png" else if(contador == 1) "poseidon.png" else if(contador==2) "hades.png" else if(contador==3) "ares.png" else if(contador==4)"ateneaD.png" else if(contador==5)"artemisaD.png" else if(contador == 6) "apoloD.png" else "hermesD.png"
  

  override method interactuar() {
    self.alternar()
    llaveCofre1D.aparecer()
  }

  override method alternar() {
    if (contador == 7){
      contador = 0
    }
    else{
      contador = contador +1
    }
  }

   method numero() = contador
  }

  object antorcha1D  inherits AntorchaDificil{
  override method position() = game.at(1, 10.3)

}

object antorcha2D inherits AntorchaDificil{
  override method position() = game.at(2, 10.3)

}

object antorcha3D inherits AntorchaDificil{
  override method position() = game.at(3, 10.3)

}
object antorcha4D inherits AntorchaDificil{
  override method position() = game.at(4, 10.3)

}
object antorcha5D inherits AntorchaDificil{
  override method position() = game.at(11, 10.3)

}
object antorcha6D inherits AntorchaDificil{
  override method position() = game.at(12, 10.3)
}

// antorchas de la parte inferior del nivel 1
object antorcha7D  inherits AntorchaDificil{
  override method position() = game.at(13,10.3)

}

object antorcha8D inherits AntorchaDificil{
  override method position() = game.at(14, 10.3)

}






// LLAVES CLASES Y OBJETOS

class Llave{ 
  method image() = "llave.png"
  method position() = game.center()
  method aparecer()
  method interactuar() {
    carlitos.recogerLLave()
    game.removeVisual(self)
  }
}

object llaveCofre1 inherits Llave{
  
  override method aparecer() {
    if(antorcha1.estaPrendida() and antorcha2.estaPrendida() and !antorcha3.estaPrendida() and antorcha4.estaPrendida() and antorcha5.estaPrendida() and !antorcha6.estaPrendida() and antorcha7.estaPrendida() and antorcha8.estaPrendida())
    game.addVisual(self)
  } 
}

object llaveCofre1D inherits Llave{
  
  override method aparecer() {
    if(antorcha1D.numero() == 6 and antorcha2D.numero() == 0 and antorcha3D.numero() == 4  and antorcha4D.numero() == 1 and antorcha5D.numero() == 7 and antorcha6D.numero() == 2 and antorcha7D.numero() == 5 and antorcha8D.numero() ==3)
    game.addVisual(self)
  } 
}
object llaveCofre2 inherits Llave{
  
  override method aparecer() {
    keyboard.v().onPressDo({game.addVisual(self)})
  } 

  // method aparecerCuando(){
    
  // }
}

object llaveNivel1 { // solo la tenemos en el inventario , asi que no hace falta modelar todo lo de image ny funcionabilidad
  
}

object llaveNivel2 {
 
}


/// PUERTAS CLASES Y OBJETOS

class Puerta{
  var abierta = false 
  var image =  "puertaUnoCerrada.png"

  method image() = image
  method position() = game.at(16, 10)

  method interactuar(){
  if(carlitos.inventario() == llaveNivel1){
     self.abrirPuerta()
     carlitos.vaciarInventario()
  }
  if(self.estaAbierta()){
    game.say(self, "ir a nive l2")
    introNivel2.arrancar()
  }
  else{
    game.say(self, "necesitas una llave")
  }
  }

  method abrirPuerta() {
    abierta = !abierta
    image = "puertaUnoAbierta.png"
  }

  method estaAbierta() = abierta
}

object puertaNivel1Dificil inherits Puerta{
  override method position() = game.at(16, 10)
  override method image() =  "puertaUnoCerrada.png"

  override method abrirPuerta() {
    abierta = !abierta
    image = "puertaUnoAbierta.png"
  }

  override method interactuar(){
  if(carlitos.inventario() == llaveNivel1){// 
     self.abrirPuerta()
     carlitos.vaciarInventario()
  }
  if(self.estaAbierta()){
    game.say(self, "ir a nive l2 cambiar")
    introNivel2Dificil.arrancar() ///// paso  para arrancar nivel 2 dificil 
  }
  else{
    game.say(self, "necesitas una llave")
  } 
  }
}


object puertaNivel2 inherits Puerta{
  override method position() = game.at(17, 10)
  override method image() =  "puertaCerradaNivel2.png"

  override method abrirPuerta() {
    abierta = !abierta
    image = "puertaAbiertaNivel2.png"
  }

  override method interactuar(){
  if(carlitos.inventario() == llaveNivel2){// 
     self.abrirPuerta()
     carlitos.vaciarInventario()
  }
  if(self.estaAbierta()){
    game.say(self, "ir a nive l3 cambiar")
    // introNivel3.arrancar() ///// paso  para nivel 3
  }
  else{
    game.say(self, "necesitas una llave")
  } 
  }
}

object puertaSotanoEntrada{ // si carlitos tiene llave que entre sino no , que al morir todos los patos , aparezca la llave nivel (al agarrrarla la variable de carlitos tienellave cambia a true y entra al sotando)
  method image() = "sotanoEntrada.png"
  method position() = game.at(18, 2)  
  method interactuar() {
    game.clear()
    sotano.iniciar()
  }
}
object puertaSotanoSalida{
  method image() = "puertaSotanoSalida.png"
  method position() = game.at(18, 2)  
  method interactuar() {
    game.clear()
    nivel2SinPatos.iniciar()
  }
}


object arma {
  method image() = "arma.png"
  method position ()= game.at(1,10)
  method interactuar() {
    carlitos.recogerArma()
    game.removeVisual(self)
  }

}

// notas de pistas
class LibroPistas {
 
  method image() = "libroPista.png"

  method interactuar()
}

object pistaNivel1 inherits LibroPistas {
  
  method position() = game.at(5, 1)

  override method interactuar(){
    notaPista1.mostrar()
  }
}

object pistaNivel1D inherits LibroPistas{

  method position() = game.at(5, 1)
  override method interactuar(){
    notaPista1D.mostrar()
  }

}

object notaPista1 {
    method image() = "notaDelLibro.png" 
    method position() = game.origin() 
    method mostrar() {
      game.addVisual(self)
      game.schedule(5000, {game.removeVisual(self)})
    }
}

object notaPista1D {
    method image() = "acerD.png" 
    method position() = game.origin() 
    method mostrar() {
      game.addVisual(self)
      game.schedule(15000, {game.removeVisual(self)})
    }
}




/// CURACIONES

class Cura {
  const cura = 50
  method image() = "cura.png" /// cargar imagen
  method position() 
 
  method interactuar() {
    carlitos.recuperarVida(cura)
    game.removeVisual(self)
  }
}

object cura1 inherits Cura {
  override method position() = game.at(2,2)  
}
object cura2 inherits Cura {
  override method position() = game.at(2,10)  
}

