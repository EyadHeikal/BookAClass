//
//  PriceCell.swift
//  App
//
//  Created by Eyad Heikal on 7/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class PriceCell: UITableViewCell {

    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        priceLabel.layer.cornerRadius = 10
        priceLabel.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
