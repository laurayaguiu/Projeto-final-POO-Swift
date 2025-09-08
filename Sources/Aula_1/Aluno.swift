import Foundation

enum NivelAluno {
    case iniciante
    case intermediario
    case avancado
}

 class Aluno: Pessoa {
    var matricula: String
    var nivel: NivelAluno
    private(set) var plano: Plano

    init(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: Plano ) {
        self.matricula = matricula
        self.nivel = .iniciante
        self.plano = plano
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return super.getDescricao() + " matricula: \(matricula), plano: \(plano)"
    }

 }