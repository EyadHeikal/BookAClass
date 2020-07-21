//
//  TestVC.swift
//  App
//
//  Created by Eyad Heikal on 7/20/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import UIKit

class TestVC: UIViewController {

    @IBOutlet weak var testTabBar: UITabBar!
    @IBOutlet weak var testSegmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        
        let test = AboutPhotos(frame: CGRect(x: 10, y: 50, width: view.frame.size.width - 20, height: 200))

        view.addSubview(test)
        
    }

}



extension TestVC: UITabBarDelegate {
    
}
