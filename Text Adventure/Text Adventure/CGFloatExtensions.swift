//
//  CGFloatExtensions.swift
//  Text Adventure
//
//  Created by Bryan Miller on 9/9/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    static func convertHeight(h: CGFloat, screenSize: CGRect) -> CGFloat {
        // iPhone 5 height is 568 and designed on iPhone 5
        let iPhone5Height: CGFloat = 568.0
        let currentPhoneHeight: CGFloat = screenSize.height
        // calculate ratio between iPhone 5 and current
        let phoneRatio: CGFloat = currentPhoneHeight / iPhone5Height
        return (h * phoneRatio)
    }
    
    static func convertWidth(w: CGFloat, screenSize: CGRect) -> CGFloat {
        // iPhone 5 width is 320
        let iPhone5Width: CGFloat = 320.0
        let currentPhoneWidth: CGFloat = screenSize.width
        // calculate ratio between iPhone 5 and current
        let phoneRatio: CGFloat = currentPhoneWidth / iPhone5Width
        return (w * phoneRatio)
    }
}
