//
//  CatlTableViewCell.swift
//  Pragma
//
//  Created by Sebastian Mejia on 16/11/22.
//

import UIKit

class CatlTableViewCell: UITableViewCell {
    
    @IBOutlet weak var breedNameLabel: UILabel!
    @IBOutlet weak var catInteligenceLabel: UILabel!
    @IBOutlet weak var catCountryLabel: UILabel!
    @IBOutlet weak var catImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
