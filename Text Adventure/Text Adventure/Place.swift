//
//  Place.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

class Place {
    
    var name: String = ""
    var description: String = ""
    var item: String = ""
    
    init() {}
    init(name: String, description: String, item: String) {
        self.name = name
        self.description = description
        self.item = item
    }
    
}
