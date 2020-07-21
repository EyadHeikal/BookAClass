//
//  MainPresenter.swift
//  App
//
//  Created by Eyad Heikal on 7/18/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import Foundation


class MainPresenter: MainPresenterProtocol {
    
    weak var view: MainView?
    
    init(_ view: MainView) {
        self.view = view
    }
    
    func getSegments() -> [String] {
        return Service.shared.getTabs()
    }
    func getAboutLabel() -> String {
        return Service.shared.getAboutText()
    }
    
    func getDays() -> [String] {
        return Service.shared.getDays()
    }
    
}

extension ViewController : MainView {
    

    
}
