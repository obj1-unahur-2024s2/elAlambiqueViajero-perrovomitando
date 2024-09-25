object luke {
    var recuerdoActual = ''
    var vehiculoActual = alambique

    method lugarDestacado() = recuerdoActual

    method vehiculoActual() = vehiculoActual

    method cambiarVehiculo(nuevoVehiculo) {
      vehiculoActual = nuevoVehiculo 
    }

    method viajar(lugar) {
        if(lugar.puedeViajar()){
            recuerdoActual = lugar.recuerdo()
            vehiculoActual.gastarCombustible()
        }
    }
}
object alambique {

    var combustible = 100
    method combustible() = combustible 

    method velocidad() = combustible * 2

    method gastarCombustible() {
        combustible = combustible - 10
    }

}

object paris {
    method puedeViajar() = luke.vehiculoActual().combustible() >50
    method recuerdo() = 'torreEiffel' 
}

object buenosAires {
    var recuerdo = "mate lleno"
    method recuerdo() = recuerdo 
    method puedeViajar() = luke.vehiculoActual().velocidad() > 50
}


