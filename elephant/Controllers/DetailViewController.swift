//
//  DetailViewController.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 18/10/21.
//

import UIKit

class DetailViewController: UITableViewController{
  
    var elefanteTocado: Elefante! = Elefante()
    let imageIV = UIImageView()
    var safeArea: UILayoutGuide!
    let enumLabel = UILabel()
    
    var arrayDeElefanteTocadoMais2: [Elefante] = []
    // UIImageView


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
       //print("elefante: \(elefanteTocado.name)")
      //print("Quantidade: \(arrayDeElefanteTocadoMais2.count)")
        safeArea = view.layoutMarginsGuide
        
        configImage()
        configLabel()
        configData()
    }
    
    func configImage() {
        view.addSubview(imageIV)
        
        imageIV.translatesAutoresizingMaskIntoConstraints = false
        imageIV.contentMode = .scaleAspectFit
        imageIV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageIV.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 50).isActive = true
        imageIV.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.5).isActive = true
        imageIV.heightAnchor.constraint(equalTo: imageIV.widthAnchor).isActive = true
    }
    
    func configLabel(){
        view.addSubview(enumLabel)
        
        enumLabel.translatesAutoresizingMaskIntoConstraints = false
        enumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        enumLabel.topAnchor.constraint(equalTo: imageIV.bottomAnchor, constant: 10).isActive = true
        enumLabel.textColor = .black
    }
    
    func configData(){

        if let elefante = elefanteTocado, let url = URL(string: elefante.image!){
            if let data = try? Data(contentsOf: url) {
                imageIV.image = UIImage(data: data)
        }
        enumLabel.text =  elefante.name!
    }
}
}
