import objetos2.*
import enemigos.*

object sistema2 {
    const curas = [new Cura(position = game.at(2,2)), new Cura(position = game.at(2,10)) ]
    const patosEnemigos = [ new Enemigos(), new Enemigos(),new Enemigos(), new Enemigos(),new Enemigos()]
    const llaveNivel2 = new Llave(position = game.center())
    const property nivel2pantalla = new Imagen(img = "nivel2.png", position= game.origin())
    

    method iniciarPantalla() = nivel2pantalla.iniciar()

    method eliminarPantalla() {
       game.removeVisual(nivel2pantalla) 
    } 

    method iniciarCuras() {
        curas.forEach({cura=> cura.iniciar()})
    }
    
    method todosLosPatosMuertos() = patosEnemigos.all({p=>p.vida() == 0})

    method iniciarPatos(){
        patosEnemigos.forEach({pato=> pato.iniciar()})}

    method darleMovimientoAPatos(){
        patosEnemigos.forEach({p=>p.activarMovimientoPato()})}   

    method aparecerLlave(){
        if(self.todosLosPatosMuertos()){
            llaveNivel2.iniciar()
        }
    }
    method iniciarPatoGigante(){
        const patoGigante = new PatoGigante(img = "patoGiganteVivo.png")
            game.addVisual(patoGigante)
            patoGigante.activarMovimientoPato()
    }
    method iniciarPatoGiganteMuerto(){
        const patoGiganteMuerto = new PatoGigante(img = "patoGiganteMuerto.png", position = game.origin())
            game.addVisual(patoGiganteMuerto)
    }
}



