//
//  SegmentedControl.swift
//  App
//
//  Created by Eyad Heikal on 7/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class SegmentedControl: UISegmentedControl {
    
    //let segments = ["About", "Booking", "Reviews"]


    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customizeSegmentControl()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        customizeSegmentControl()
    }
    override init(items: [Any]?) {
        super.init(items: items)
        customizeSegmentControl()
    }
    
    func customizeSegmentControl() {

        setTitleTextAttributes([ .font : UIFont(name: "menlo", size: 20) as Any], for: .normal)
        setTitleTextAttributes([.foregroundColor : #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)], for: .selected)

        selectedSegmentTintColor = #colorLiteral(red: 1, green: 0, blue: 0.2352941176, alpha: 0.9425098094)
        
        selectedSegmentIndex = 0
        
    }

}
