//
//  AboutLabel.swift
//  App
//
//  Created by Eyad Heikal on 7/19/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit
@IBDesignable
class AboutLabel: UILabel {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //fatalError("init(coder:) has not been implemented")
        self.customizeLabel()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.customizeLabel()
    }
    

    
    func customizeLabel() {
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
        textColor = #colorLiteral(red: 0.08235294118, green: 0.03529411765, blue: 0.2117647059, alpha: 1)
        text  = "kkadadasdadasajfakfafaslkfalkfakfalknaslfasalaflkjsflajsfalkfjsalfjaljrqi3rjpi3qrjelrfinwoiwofnlkdnfakFkndflkbasf/asjbf/jabfa;"
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 0.5
        numberOfLines = 3
        
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 15, left: 15, bottom: 0, right: 15)
        super.drawText(in: rect.inset(by: insets))
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
