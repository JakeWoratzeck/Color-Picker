//
//  Color.swift
//  Color Picker
//
//  Created by Jake Woratzeck on 11/11/17.
//  Copyright © 2017 Jake Woratzeck. All rights reserved.
//

import UIKit

struct Color {
    let name: String
    let color: UIColor
    
    init(name: String, color: UIColor){
        self.name = name
        self.color = color
    }
}
