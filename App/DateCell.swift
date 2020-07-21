//
//  DateCell.swift
//  App
//
//  Created by Eyad Heikal on 7/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class DateCell: UITableViewCell {
    @IBOutlet weak var dayLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
