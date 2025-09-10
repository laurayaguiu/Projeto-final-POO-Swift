import Foundation
class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    var capacidadeMaxima: Int

    override init(nome: String, instrutor: String) {
        self.capacidadeMaxima = 25
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {
        if (alunosInscritos.count >= capacidadeMaxima) {
            print("LOTADO!!")
            return false
        } else {
            print("Aula com vaga")
            return true 
        }

        
       if(alunosInscritos.keys.contains(aluno.matricula)) {
        print("Aluno já está inscrito")
        return false 
        } else { 
            alunosInscritos [aluno.matricula] = aluno
       }
        
        print("Aluno adicionado com sucesso!")
        return true 
       }
       
    }
    
    override func getDescricao() -> String {
        return super.getDescricao() + "numero de vagas (\(alunosInscritos.count ) - \(capacidadeMaxima)), capacidade máxima: \(capacidadeMaxima)"
    }
}

