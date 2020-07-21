//
//  Service.swift
//  App
//
//  Created by Eyad Heikal on 7/18/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import Foundation

class Service {
    
    static let shared = Service()
    
    private init(){
        
    }
    
    func getTabs() -> [String] {
        return DummyData.segments
    }
    
    func getAboutText() -> String {
        return DummyData.about
    }
    
    func getDays() -> [String] {
        return DummyData.days
    }
}
