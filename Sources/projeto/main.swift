import Foundation

var minhaAcademia = Academia(nome: "Academia POO 360")

let meuPlanoMensal = PlanoMensal()
let meuPlanoAnual = PlanoAnual()

let instrutor1 = Instrutor(nome: "Heitor", email: "heitorferreira@gmail.com", especialidade: "Zumba")
let instrutor2 = Instrutor(nome: "Enzo", email: "enzorocha@gmail.com", especialidade: "Pilates")

Academia.contratarInstrutor(instrutor1)
Academia.contratarInstrutor(instrutor2)

let aluno1 = matricularAluno(Aluno(nome: "Laura", email: "laurayaguiu@gmail.com", matricula: "10736399A", nivel: .iniciante, plano:  ))
let aluno2 = matricularAluno(Aluno(nome: "Elton", email: "eltonyaguiu@gmail.com", matricula: "10736449A", nivel: .avancado, plano:  ))

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

let listarAulas: [Aula] = []
for aula in listarAulasAulas {
print(aula.getDescricao())
}




let listaPessoas: [Pessoa] = [aluno1, instrutor1, aluno2, instrutor2]
for pessoa in listaPessoas {
print(pessoa.getDescricao())
}



let relatorio = academia.gerarRelatorio()
print("--- Relatório da Academia ---")
print("Total de Alunos: \(relatorio.totalAlunos)")
print("Total de Instrutores: \(relatorio.totalInstrutores)")
print("Total de Aulas: \(relatorio.totalAulas)")
print("-----------------------------")