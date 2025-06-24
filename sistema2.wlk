import objetos2.*
import objetos1.*
import enemigos.*
import final.*


object sistema2 {
    //// variables para el nivel 2 facil y dificil
    const curas = [new Cura(position = game.at(2,2)), new Cura(position = game.at(2,8)) ]
    const patosEnemigos = [new Enemigos(), new Enemigos(),new Enemigos(), new Enemigos(),new Enemigos()]
    const property llaveNivel2 = new Llave(position = game.center(),img = "llave.png")
    // const property nivel2pantalla = new Imagen(img = "nivel2.png", position= game.origin())
    const property reja = new Puerta(position = game.at(6, 10), puertaA = "rejaAbierta.png" , puertaC = "rejaCerrada.png" , llaveNecesaria = llaveNivel2 , llevaA = final)
    const patoGigante = new PatoGigante()

    method iniciarPuerta() = reja.iniciar()

    // method iniciarPantalla() = nivel2pantalla.iniciar()

    // method eliminarPantalla() {
    //    game.removeVisual(nivel2pantalla) 
    // } 

    method iniciarCuras() {
        curas.forEach({cura=> cura.iniciar()})}

    method iniciarPatos(){
        patosEnemigos.forEach({pato=> pato.iniciar()})}  

    method todosLosPatosMuertos() = patosEnemigos.all({p=>p.estaMuerto()})

    method patoGiganteEstaMuerto() = patoGigante.vida() == 0

    method darleMovimientoAPatos(){
        patosEnemigos.forEach({p=>p.activarMovimientoPato()})}   

    method aparecerLlave(){
       if(self.todosLosPatosMuertos() or self.patoGiganteEstaMuerto()){
            llaveNivel2.iniciar()
     }
       
    }
    method iniciarPatoGigante() = patoGigante.iniciar()

    method darleMovimientoPatoGigante() = patoGigante.activarMovimientoPato()

    method iniciarPatoGiganteMuerto(){
        const patoGiganteMuerto = new PatoGigante(img = "patoGiganteMuerto.png", position = game.origin())
            game.addVisual(patoGiganteMuerto)
    }
}



