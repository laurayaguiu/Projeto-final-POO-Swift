import Foundation

let academia = Academia(nome: "Academia POO 360")

let planoMensal = PlanoMensal(nome: "Plano Mensal")
let planoAnual = PlanoAnual(nome: "Plano Anual")

let instrutor1 = Instrutor(nome: "Henrique", email: "HL@gmail.com", especialidade: "Zumba")
let instrutor2 = Instrutor(nome: "Erica", email: "ericak@gmail.com", especialidade: "Pilates")

academia.contratarInstrutor(instrutor1)
academia.contratarInstrutor(instrutor2)

let aluno1 = Aluno(nome: "laura", email: "lauray@gmail.com", matricula: "T564", nivel: .iniciante, plano: planoMensal)
let aluno2 = Aluno(nome: "elton", email: "eltony@gmail.com", matricula: "T234", nivel: .avancado, plano: planoAnual)

academia.matricularAluno(aluno1)
academia.matricularAluno(aluno2)

let aulaPersonal = AulaPersonal(nome: "Zumba com herique", instrutor: instrutor1, aluno: aluno1)
let aulaColetiva = AulaColetiva(nome: "Pilates com erica", instrutor: instrutor2)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

aulaColetiva.inscrever(aluno1)
aulaColetiva.inscrever(aluno2)
let aluno3 = Aluno(nome: "mario", email: "mario@gmail.com", matricula: "T345", nivel: .intermediario, plano: planoAnual)
aulaColetiva.inscrever(aluno3)
let aluno4 = Aluno(nome: "afonso", email: "afonso@gmail.com", matricula: "T111", nivel: .avancado, plano: planoMensal)
aulaColetiva.inscrever(aluno4)

academia.listarAulas()
academia.listarAlunos()

var listaAulas: [Aula] = []
listaAulas.append(aulaPersonal)
listaAulas.append(aulaColetiva)
for aula in listaAulas {
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

var relatorio = academia.gerarRelatorio()

print("\n--- Relatório da Academia ---")
print("Total de Alunos: \(relatorio.totalAlunos)")
print("Total de Instrutores: \(relatorio.totalInstrutores)")
print("Total de Aulas: \(relatorio.totalAulas)")
print("-----------------------------")