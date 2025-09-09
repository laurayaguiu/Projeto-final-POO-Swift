import Foundation

protocol Manutencao {
    var nomeItem: String {get}
    var dataUltimaManutencao: String
    func realizarManutencao() -> Bool
    
}


