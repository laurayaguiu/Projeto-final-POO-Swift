class Aparelho: Manutencao {
    var nomeItem: String
    private(set) var dataUltimaManutencao: String 
    
    init(nomeItem: String) {
        self.dataUltimaManutencao = "Nenhuma"
        self.nomeItem = nomeItem
    }

    func realizarManutencao() -> Bool {
        print("Realizando manutenção do aparelho")
        //self.dataUltimaManutencao = "30/08/2025"
        print("Manutenção concluída! ultima verificação em: \(dataUltimaManutencao)")
        return true
    }
}
