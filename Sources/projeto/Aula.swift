import Foundation

enum NivelAluno {
    case iniciante
    case intermediario
    case avancado
}

class Aula {
    var nome: String
    var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = instrutor
    }

    func getDescricao() -> String {
        return "Aula: \(nome) Instrutor: \(instrutor.nome)"
    }


}