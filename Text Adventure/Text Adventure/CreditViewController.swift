//
//  CreditViewController.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var pic: UIImageView!
    
    let kNavBarToText: CGFloat = 38.0
    let kTextToPic: CGFloat = 50.0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let screenSize = self.view.bounds
        let width = screenSize.width
        let height = screenSize.height
        
        if let navigationBar = navigationController?.navigationBar {
            let navBarHeight = navigationBar.getHeight()
            
            let goodTextSize = textLabel.sizeThatFits(CGSize(width: width - 24, height: height))
            textLabel.frame = CGRect(x: 12,
                                      y: navBarHeight + CGFloat.convertHeight(h: kNavBarToText, screenSize: screenSize),
                                      width: width - 24,
                                      height: goodTextSize.height)
            
            let picWidth = pic.bounds.width
            let picHeight = pic.bounds.height
            pic.frame = CGRect(x: width/2 - picWidth/2,
                                            y: textLabel.frame.maxY + CGFloat.convertHeight(h: kTextToPic, screenSize: screenSize),
                                            width: picWidth,
                                            height: picHeight)
            
        }
    }


}
