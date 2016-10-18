//: Reto de la semana 4


// Definición del tipo enumerado:
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial;
    }
}

// Definición de la clase Auto
class Auto {
    var velocidad = Velocidades(velocidadInicial: .Apagado);
    
    init(){
        self.velocidad = .Apagado;
    }
    
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String){
        
        let velocidadTmp = self.velocidad;
        
        switch self.velocidad {
        case .Apagado:
            self.velocidad = .VelocidadBaja;
            return (velocidadTmp.rawValue, "Apagado");
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            return (velocidadTmp.rawValue, "Velocidad Baja");
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            return (velocidadTmp.rawValue, "Velocidad Media");
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            return (velocidadTmp.rawValue, "Velocidad Alta");
        }
    }
}


// Ejemplo de uso de la clase:
let auto = Auto();

for k in 0 ..< 20 {
    let velocidad = auto.cambioDeVelocidad();
    print("\(velocidad.0), \(velocidad.1)");
}
