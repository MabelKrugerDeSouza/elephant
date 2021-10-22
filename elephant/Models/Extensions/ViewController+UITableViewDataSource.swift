//
//  ViewController+UITableViewDataSource.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 18/10/21.
//

import UIKit

//MARK: extension data source
extension ViewController: UITableViewDataSource {// metodos de origem de dados
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayElefantes.count
    }// quantidade de celulas por sessao
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {//
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! CelulaElefanteTableViewCell // esse as faz um cast

        let elephant = self.arrayElefantes[indexPath.row]
        if let imageURL = elephant.image {
            if let url = URL(string: imageURL) {
                if let data = try? Data(contentsOf: url) {
                    cell.imagemElefante.image = UIImage(data: data)
                    
                }
            }
        }
        cell.lblNomeElefante.text                   = self.arrayElefantes[indexPath.row].name
        cell.lblDescricao.text                      = self.arrayElefantes[indexPath.row].note
        cell.lblDescricao.adjustsFontSizeToFitWidth = true
        cell.lblDescricao.numberOfLines             = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 136.0
    }
}
