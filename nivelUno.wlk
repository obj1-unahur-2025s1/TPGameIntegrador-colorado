import objetos1.*
import protagonista.*
import sistema1.*



object nivel1 {
  const property image = "fondoNivel1v2.png"
  var property position = game.origin()

  // const llaveUno = new Llave()

  method iniciar() {
  game.addVisual(self)
  sistema.iniciarAntorchas()
  sistema.iniciarCofre()
  sistema.iniciarPuerta()
  sistema.iniciarPista()
  game.addVisual(carlitos)


    keyboard.w().onPressDo { carlitos.move(carlitos.position().up(1)) }
    keyboard.s().onPressDo { carlitos.move(carlitos.position().down(1)) }
    keyboard.a().onPressDo { carlitos.move(carlitos.position().left(1)) }
    keyboard.d().onPressDo { carlitos.move(carlitos.position().right(1)) }

  
                      //          game.whenCollideDo(carlitos,{elemento => game.say(carlitos, carlitos.hablar(elemento.contenido()))})
	game.onCollideDo(carlitos, {algo=>algo.interactuar()}) //metodo para cuando carlos colisiona con algo interactua con el metodo de ese algo , la idea es hacer que con el asesino pierda y con el arma que la tome
    //           game.schedule(20000, {game.removeTickEvent("aparece asesino")})
	//self.generarPato()
  }




}


