//
//  UINavBarExtensions.swift
//  Text Adventure
//
//  Created by Bryan Miller on 9/9/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationBar {
    
    func getHeight() -> CGFloat {
        return self.bounds.height + 20
    }
    
    func setCustomStyle() {
        self.barTintColor = UIColor(red: 0.0, green: 0.478, blue: 1.0, alpha: 1.0)
        self.backgroundColor = UIColor.white
        self.tintColor = UIColor.white
        
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.gray.withAlphaComponent(0.2)
        shadow.shadowOffset = CGSize(width: 1, height: 1)
        shadow.shadowBlurRadius = 1
        self.titleTextAttributes = [
            NSFontAttributeName : UIFont.boldSystemFont(ofSize: 22),
            NSForegroundColorAttributeName : UIColor.white,
            NSShadowAttributeName : shadow
        ]
    }
}
