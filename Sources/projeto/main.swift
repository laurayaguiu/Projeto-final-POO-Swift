import Foundation

var minhaAcademia = Academia(nome: "Academia POO 360")

let meuPlanoMensal = PlanoMensal("Plan")
let meuPlanoAnual = PlanoAnual()

let instrutor1 = Instrutor(nome: "Heitor", email: "heitorferreira@gmail.com", especialidade: "Zumba")
let instrutor2 = Instrutor(nome: "Enzo", email: "enzorocha@gmail.com", especialidade: "Pilates")

Academia.contratarInstrutor(instrutor1)
Academia.contratarInstrutor(instrutor1)

let aluno1 = matricularAluno(Aluno(nome: "Laura", email: "laurayaguiu@gmail.com", matricula: "10736399A", nivel: .iniciante, plano:  ))
let aluno2 = matricularAluno(Aluno(nome: "Elton", email: "eltonyaguiu@gmail.com", matricula: "10736449A", nivel: .avancado, plano:  ))

let minhaAulaPersonal = AulaPersonal(nome: "Aula de zumba", instrutor: instrutor1, aluno: aluno1)
let minhaAulaColetiva = AulaColetiva(nome: "Aula de pilates", instrutor: Instrutor)
