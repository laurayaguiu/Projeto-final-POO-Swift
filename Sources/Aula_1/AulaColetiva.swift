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
            return false
        }

        // Retorna um valor booleano que indica se a sequência contém um elemento no dicionario q seja igual a matricula desse aluno
        if alunosInscritos.contains(where: { $0.key == aluno.matricula }) {
        print("Aluno \(aluno.nome) já está inscrito.")
        return false
        }

       alunosInscritos[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) inscrito com sucesso!")
        return true
    }
    
    override getDescricao() -> String {
        return super.getDescricao() + "numero de vagas" \(alunosInscritos.count), "capacidade máxima:" \(capacidadeMaxima)
    }
}