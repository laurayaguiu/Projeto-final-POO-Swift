import Foundation

class PlanoAnual: Plano {
    init () {
        super.init(nome: "Plano Anual(Promocional)")
    }


    override func CalcularMensalidade() -> Double {
        return ((120*12)*0.80)/12
    }
}