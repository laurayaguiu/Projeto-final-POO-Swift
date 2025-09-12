import Foundation

var minhaAcademia = Academia(nome: "Academia POO 360")

let meuPlanoMensal = PlanoMensal(nome: "Plano Mensal")
let meuPlanoAnual = PlanoAnual(nome: "Plano Anual")

let instrutor1 = Instrutor(nome: "Heitor", email: "heitorferreira@gmail.com", especialidade: "Zumba")
let instrutor2 = Instrutor(nome: "Enzo", email: "enzorocha@gmail.com", especialidade: "Pilates")

Academia.contratarInstrutor(instrutor1)
Academia.contratarInstrutor(instrutor2)

let aluno1 = matricularAluno(Aluno(nome: "Laura", email: "laurayaguiu@gmail.com", matricula: "10736399A", nivel: .iniciante, plano:  ))
let aluno2 = matricularAluno(Aluno(nome: "Elton", email: "eltonyaguiu@gmail.com", matricula: "10736449A", nivel: .avancado, plano:  ))

academia.matricularAluno(aluno1)
academia.matricularAluno(aluno2)

let minhaAulaPersonal = AulaPersonal(nome: "Aula de zumba", instrutor: instrutor1, aluno: aluno1)
let minhaAulaColetiva = AulaColetiva(nome: "Aula de pilates", instrutor: Instrutor, capacidadeMaxima: 3)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

aulaColetiva.inscrever(aluno: aluno1)
aulaColetiva.inscrever(aluno: aluno2)

let aluno3 = academia.matricularAluno(nome: "Martins", email: "martins@gmail.com", matricula: "107364488", plano: planoMensal)
aulaColetiva.inscrever(aluno: aluno3)

let aluno4 = academia.matricularAluno(nome: "Erick", email: "Ericksilva@email.com", matricula: "10ff64488", plano: planoMensal)
aulaColetiva.inscrever(aluno: aluno4)

academia.listarAulas()
academia.listarAulas()

var listarAulas: [Aula] = []
listaAulas.append(aulaPersonal)
listaAulas.append(aulaColetiva)
for aula in listarAulasAulas {
    print(aula.getDescricao())
}


var listaPessoas: [Pessoa] = []
listaPessoas.append(instrutor1)
listaPessoas.append(aluno1)
for pessoa in listaPessoas {
    print(pessoa.getDescricao())
}

extension Academia {
    func gerarRelatorio() -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int) {
        return (
        totalAlunos: alunosMatriculados.count,
        totalInstrutores: instrutoresContratados.count,
        totalAulas: aulasDisponiveis.count
        )
    }
}

var relatorio = Academia.gerarRelatorio()

print("--- Relatório da Academia ---")
print("Total de Alunos: \(relatorio.totalAlunos)")
print("Total de Instrutores: \(relatorio.totalInstrutores)")
print("Total de Aulas: \(relatorio.totalAulas)")
print("-----------------------------")