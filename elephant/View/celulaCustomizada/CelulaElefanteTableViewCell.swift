//
//  CelulaElefanteTableViewCell.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 20/10/21.
//

import UIKit
import SnapKit

class CelulaElefanteTableViewCell: UITableViewCell {

    @IBOutlet weak var imagemElefante: UIImageView!
    @IBOutlet weak var lblDescricao: UILabel!
    @IBOutlet weak var lblNomeElefante: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lblNomeElefante.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10)
            make.left.equalTo(self).offset(10)
            make.right.equalTo(imagemElefante.snp.left).offset(-10)
            make.bottom.equalTo(lblDescricao.snp.top).offset(-10)
        }
        
        lblDescricao.snp.makeConstraints { make in
            make.top.equalTo(lblNomeElefante.snp.bottom).offset(10)
            make.left.equalTo(lblNomeElefante.snp.left).offset(0)
            make.right.equalTo(imagemElefante.snp.left).offset(-10)
            make.bottom.greaterThanOrEqualTo(self).offset(-10)
        }
        
        imagemElefante.snp.makeConstraints { make in
            make.centerY.equalTo(self).offset(10)
            make.right.equalTo(self).offset(-10)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
