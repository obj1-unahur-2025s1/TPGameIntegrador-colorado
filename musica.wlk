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

object musica {
  var property position = game.origin()

  const musicaAmbiente = ambiente

  method reproducirMusica() {
    musicaAmbiente.sonar()
    musicaAmbiente.loop()
  }

  method clear() {
    musicaAmbiente.stop()
  }
  
}
