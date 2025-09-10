import Foundation

class Academia {
    private(set) let nome : String
    private(set) var alunosMatriculados : [String: Aluno]
    private(set) var aparelhos : [Aparelho]
    private(set) var instrutoresContratados : [String: Instrutor]
    private(set) var aulasDisponiveis : [Aula]

    init(nome: String, alunosMatriculados: [String: Aluno], aparelhos: [Aparelho], instrutoresContratados: [String: Instrutor], aulasDisponiveis: [Aula] ) {
        self.nome = nome
        self.alunosMatriculados = alunosMatriculados
        self.aparelhos = aparelhos
        self.instrutoresContratados = instrutoresContratados
        self.aulasDisponiveis = aulasDisponiveis
    }

    func adicionarAparelho(_ aparelhos: Aparelho) {
        aparelhos.append(Aparelho.nomeItem)
    }

    func adicionarAula(_ aula: Aula) {
        aula.append(Aula.nome)
    }

    func contratarInstrutor(_ instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
    }

    func matricularAluno(_ aluno: Aluno) {
        if (alunosMatriculados.keys.contains(aluno.matricula)) {
            print("Erro: Aluno com matrícula X já existe")
        } else {
            alunosMatriculados [aluno.matricula] = aluno
            print("Aluno adicionado")
        }
    }

    func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        var novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        matricularAluno(novoAluno)
        return novoAluno

    }

    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        return 
    }

    func listarAlunos() {
        print("--- Lista de Alunos Matriculados ---")
        print("------------------------------------")
    }

    func listarAulas() {
        print("--- Lista de Aulas ---")
        print("----------------------")
    }

}