import Foundation

class  PlanoMensal: Plano {
    init(nome: String) {
        super.init (nome: "Plano Mensal")
    }

    override func CalcularMensalidade() -> Double {
        return 120.0
    }
}