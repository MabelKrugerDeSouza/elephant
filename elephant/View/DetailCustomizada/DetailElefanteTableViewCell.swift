//
//  DetailElefanteTableViewCell.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 20/10/21.
//

import UIKit

class DetailElefanteTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgDetailElefante: UIImageView!
    @IBOutlet weak var lblNomeElefante: UILabel!
    @IBOutlet weak var lblEspecies: UILabel!
    @IBOutlet weak var lblSexo: UILabel!
    @IBOutlet weak var lblNoteDetails: UILabel!
    @IBOutlet weak var btnLink: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
