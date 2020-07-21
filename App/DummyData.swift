//
//  Data.swift
//  App
//
//  Created by Eyad Heikal on 7/21/20.
//  Copyright © 2020 Eyad Heikal. All rights reserved.
//

import Foundation

struct DummyData {
    
    let mainImage = "Untitled.png"
    
    static let segments = ["About", "Booking", "Reviews"]
    
    static let about = "blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablab"
    
    static let aboutImages = ["Untitled.png","Untitled.png","Untitled.png","Untitled.png","Untitled.png","Untitled.png"]
    
    static let price = "300 EGP"
    
    static let Reviews: [Review] = [Review(),Review(),Review(),Review(),Review(),Review()]
    
    static let days = ["Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"]
}
struct Review {
    let userName = "Johb Doe"
    let review  = "Professional service, Thank you"
    let image = "Untitled.png"
    
}

