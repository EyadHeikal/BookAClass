//
//  PhotosCell.swift
//  App
//
//  Created by Eyad Heikal on 7/19/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit
@IBDesignable
class PhotosCell: UITableViewCell {
    
    @IBOutlet var photoStack1: [AboutPhotos]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
