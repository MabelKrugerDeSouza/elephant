//
//  ViewController.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 18/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayElefantes: [Elefante] = []
    let api = API()
    
    let reuseIdentifier = "Celula"
    
    lazy var uitv_tabela : UITableView = {
        
        var tabela = UITableView()
        tabela.frame      = self.view.bounds
        tabela.dataSource = self // pega algo da propria classe, por isso a utilizacao do self
        tabela.delegate   = self
        
        let nib =  UINib(nibName: "CelulaElefanteTableViewCell", bundle: nil)
        tabela.register(nib, forCellReuseIdentifier: reuseIdentifier )
        
        return tabela
    }() // ta criando a tabela vazia

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(self.uitv_tabela)
        api.getElephants(urlString: api.setElephantsURL(), method: .GET) { elefantes in
            self.arrayElefantes = elefantes
            DispatchQueue.main.async {
                self.uitv_tabela.reloadData()
            }
        } errorR: { erroString in
            print(erroString)
        }
    }
    
    
    //self.descobrirEspecies(elefantes: self.arrayElefantes)
    //self.populaArrayDeElefantesAtualizaTableView()
   // print("Quantidade de Elefantes: \(self.arrayElefantes.count)")
//    func populaArrayDeElefantesAtualizaTableView(){
//        self.arrayElefantes = api.getElephants(urlString: <#T##String#>, method: <#T##HTTPMethods#>, response: { arrayElefantes in
//            <#code#>
//        })// vai retornar uma array de elefantes
//        self.uitv_tabela.reloadData() // ele executa as funcoes da tabela.
//        // essa funcao vai ate a api e pega os elefantes e transforma em uma api
//    }
    
//    func descobrirEspecies(elefantes: [Elefante]){
//        var especies: [String] = []
//        for elefante in elefantes {
//           print(elefante.species)
//           especies.append(contentsOf: elefante.species)
//        }
//    }
}
