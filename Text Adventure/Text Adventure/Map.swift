//
//  Map.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

class Map {

    var mapArray = Array<Array<Place>>()
    var n: Int = 0
    
    init(n: Int) {
        self.n = n
        
        for i in 0..<n {
            mapArray.append(Array<Place>())
            for _ in 0..<n {
                mapArray[i].append(Place())
            }
        }
    }
    
    func placeFor(x: Int, y: Int) -> Place {
        return mapArray[x][y]
    }
    
    func setPlaceAt(place: Place, x: Int, y: Int) {
        mapArray[x][y] = place
    }
    
}
