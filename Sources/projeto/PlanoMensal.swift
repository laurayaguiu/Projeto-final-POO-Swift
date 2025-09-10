import Foundation

class  PlanoMensal: Plano {
    init() {
        super.init (nome: "Plano Mensal")
    }

    override func CalcularMensalidade() -> Double {
        return 120.0
    }
}