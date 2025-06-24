object ambiente {
  const sonido = game.sound("ambiente.mp3")
  
  method sonar() {
    sonido.play()
  }
  method pausa() {
    sonido.pause()
  }
  method loop() {
    sonido.shouldLoop(true)
  }
  method stop() {
    sonido.stop()
  }
  method played() {
    return sonido.played()
  }
}

object gameOverM {
  const sonido = game.sound("gameOver.mp3")
  
  method sonar() {
    sonido.play()
  }
  method pausa() {
    sonido.pause()
  }
  method loop() {
    sonido.shouldLoop(true)
  }
  method stop() {
    sonido.stop()
  }
}

object musica {
  var property position = game.origin()

  var property musicaAmbiente = ambiente

  method reproducirMusica() {
    musicaAmbiente.sonar()
    musicaAmbiente.loop()
  }
  
}
