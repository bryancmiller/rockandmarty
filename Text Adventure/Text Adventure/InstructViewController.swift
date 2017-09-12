//
//  InstructViewController.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

class InstructViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let kNavBarToTitle: CGFloat = 38.0
    let kTitleToDescription: CGFloat = 88.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 10
        descriptionLabel.textAlignment = .center

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
            
            let goodTitleSize = titleLabel.sizeThatFits(CGSize(width: width - 24, height: height))
            titleLabel.frame = CGRect(x: 12,
                                      y: navBarHeight + CGFloat.convertHeight(h: kNavBarToTitle, screenSize: screenSize),
                                      width: width - 24,
                                      height: goodTitleSize.height)
            
            let goodDescriptionSize = descriptionLabel.sizeThatFits(CGSize(width: width - 24, height: height))
            descriptionLabel.frame = CGRect(x: 12,
                                      y: navBarHeight + CGFloat.convertHeight(h: kTitleToDescription, screenSize: screenSize),
                                      width: width - 24,
                                      height: goodDescriptionSize.height)
            
        }
    }


}
