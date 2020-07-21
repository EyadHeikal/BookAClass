//
//  AboutPhotos.swift
//  App
//
//  Created by Eyad Heikal on 7/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit
@IBDesignable
class AboutPhotos: UIImageView {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customizePhotos()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        customizePhotos()
    }
    override init(image: UIImage?) {
        super.init(image: image)
        customizePhotos()
    }
    
    func customizePhotos() {
        
        layer.cornerRadius = 10
        self.clipsToBounds = true
        //image = UIImage(named: "Untitled.png")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
