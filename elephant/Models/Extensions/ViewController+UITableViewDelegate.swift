//
//  ViewController+UITableViewDelegate.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 18/10/21.
//

import UIKit


//MARK: extension delegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = DetailViewController()
        detail.elefanteTocado = self.arrayElefantes[indexPath.row]
        self.show(detail, sender: nil)
    }
}
