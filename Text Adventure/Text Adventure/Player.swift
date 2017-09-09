//
//  Player.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

class Player {
    
    var xPos: Int = 3
    var yPos: Int = 3
    var maxXPos: Int = 0
    var maxYPos: Int = 0
    var backPack: Array<String> = Array<String>()
    var item: String = ""
    
    init(maxX: Int, maxY: Int) {
        self.maxXPos = maxX
        self.maxYPos = maxY
    }
    
    func getBackPackItems() -> String {
        var items = ""
        for item in self.backPack {
            items.append(item)
            items.append("\n")
        }
        return items
    }
    
    func addToBackPack(item: String) {
        backPack.append(item)
    }
    func isInBackPack(item: String) -> Bool {
        return backPack.contains(item)
    }
    
    func moveWest() {
        if ((xPos > 0) && yPos != 0 && yPos != 7 && yPos != 1) { xPos = xPos - 1 }
    }
    
    func moveEast() {
        if ((xPos + 1 < maxXPos) && yPos != 0 && yPos != 7 && yPos != 1) { xPos = xPos + 1 }
        
    }
    
    func moveSouth() {
        if (((yPos + 1) < maxYPos && xPos != 0 && xPos != 7) && isInBackPack(item: "gun")) { yPos = yPos + 1 }
        
        else if (yPos < 5 && xPos != 0 && xPos != 7) { yPos = yPos + 1 }
        
    }
    
    func moveNorth() {
        if (xPos == 4 && yPos == 2 && isInBackPack(item: "plank from the seesaw")) {
            yPos = yPos - 1
        }
        
        else if (xPos == 4 && yPos == 1 && isInBackPack(item: "beacon") && isInBackPack(item: "lighthouse key")) {
            yPos = yPos - 1
            //win game
        }
        
        else if ((xPos >= 1 && xPos <= 6) && yPos == 3 && isInBackPack(item: "ladder")) {
            yPos = yPos - 1
        }
        
        else if (xPos == 6 && yPos == 2 && isInBackPack(item: "golden key")) { yPos = yPos - 1 }
        
        else if ((yPos > 0 && xPos != 0 && xPos != 7) && (yPos > 3) || (xPos == 1 && yPos == 2)) { yPos = yPos - 1 }
        
    }
}
