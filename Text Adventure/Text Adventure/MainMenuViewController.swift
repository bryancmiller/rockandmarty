//
//  MainMenuViewController.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

let kButtonWidth: CGFloat = 237.0
let kButtonHeight: CGFloat = 47.0

let kNavBarToTitle: CGFloat = 38.0
let kTitleToDescription: CGFloat = 14.0
let kDescriptionToSGButton: CGFloat = 38.0
let kSGButtonToHTPButton: CGFloat = 24.0
let kHTPButtonToCredits: CGFloat = 24.0

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var howToButton: UIButton!
    @IBOutlet weak var creditsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let navigationBar = navigationController?.navigationBar {
            self.navigationItem.title = "Menu"
            navigationBar.setCustomStyle()
        }
        
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        startButton.layer.cornerRadius = 5
        startButton.clipsToBounds = true
        howToButton.layer.cornerRadius = 5
        howToButton.clipsToBounds = true
        creditsButton.layer.cornerRadius = 5
        creditsButton.clipsToBounds = true
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
            
            let descriptionWidth = descriptionLabel.bounds.width
            let descriptionHeight = descriptionLabel.bounds.height
            descriptionLabel.frame = CGRect(x: width/2 - descriptionWidth/2,
                                            y: titleLabel.frame.maxY + CGFloat.convertHeight(h: kTitleToDescription, screenSize: screenSize),
                                            width: descriptionWidth,
                                            height: descriptionHeight)
            
            let newPossibleButtonWidth = self.view.bounds.width * 0.7
            let buttonWidth = (kButtonWidth <= newPossibleButtonWidth) ? kButtonWidth : newPossibleButtonWidth
            startButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                       y: descriptionLabel.frame.maxY + CGFloat.convertHeight(h: kDescriptionToSGButton, screenSize: screenSize),
                                       width: buttonWidth,
                                       height: kButtonHeight)
            
            howToButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                       y: startButton.frame.maxY + CGFloat.convertHeight(h: kSGButtonToHTPButton, screenSize: screenSize),
                                       width: buttonWidth,
                                       height: kButtonHeight)
            
            creditsButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                         y: howToButton.frame.maxY + CGFloat.convertHeight(h: kHTPButtonToCredits, screenSize: screenSize),
                                         width: buttonWidth,
                                         height: kButtonHeight)
        }
    }
    
}
