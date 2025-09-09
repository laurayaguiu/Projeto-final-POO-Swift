import Foundation
class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    var capacidadeMaxima: Int 

    init(nome: String, instrutor: Instrutor, alunosInscritos: [String: Aluno], capacidadeMaxima: 25) {
        self.alunosInscritos = alunosInscritos
        self.capacidadeMaxima = 25

        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {
        if (alunosInscritos.count >= capacidadeMaxima) {
            print("LOTADO!!")
            
        } else if {
            print("Capacidade máxima não atengida")
        }
        if (alunosInscritos,contais{$1.key == aluno}) {
            print("Aluno já inscrito")
        } else if 
    }

    override getDescricao() -> String {
        return super.getDescricao() + "numero de vagas" \(alunosInscritos.count), "capacidade máxima:"
    }
}