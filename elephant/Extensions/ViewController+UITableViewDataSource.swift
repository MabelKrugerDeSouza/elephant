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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)

        var content = cell.defaultContentConfiguration()
        
        let elephant = self.arrayElefantes[indexPath.row]
        if let imageURL = elephant.image {
            if let url = URL(string: imageURL) {
                if let data = try? Data(contentsOf: url) {
                    content.image = UIImage(data: data)
                    content.imageProperties.reservedLayoutSize = CGSize(width: 60.0, height: 60.0)
                    content.imageProperties.maximumSize = CGSize(width: 60.0, height: 60.0)
                    content.text = elephant.name
                    content.secondaryText = elephant.note
                }
            }
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
