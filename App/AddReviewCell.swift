//
//  AddReviewCell.swift
//  App
//
//  Created by Eyad Heikal on 7/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class AddReviewCell: UITableViewCell {

    @IBOutlet weak var addReview: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        addReview.layer.cornerRadius = 10
        addReview.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
