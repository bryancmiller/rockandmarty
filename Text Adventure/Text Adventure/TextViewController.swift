//
//  TextViewController.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

let kTextButtonWidth: CGFloat = 237.0
let kTextButtonHeight: CGFloat = 47.0

let kLeftTextMargin: CGFloat = 12.0
let kRightTextMargin: CGFloat = 12.0

let kNavBarToFirst: CGFloat = 38.0
let kFirstToSecond: CGFloat = 24.0
let kSecondToThird: CGFloat = 24.0
let kThirdToFourth: CGFloat = 24.0
let kFourthToBegin: CGFloat = 24.0

class TextViewController: UIViewController {
    
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var thirdTextLabel: UILabel!
    @IBOutlet weak var fourthTextLabel: UILabel!
    @IBOutlet weak var beginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let navigationBar = navigationController?.navigationBar {
            self.navigationItem.title = "Prelude"
            navigationBar.setCustomStyle()
        }

        beginButton.layer.cornerRadius = 5
        beginButton.clipsToBounds = true
        
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
        let adjustedSize = CGSize(width: width - (kLeftTextMargin + kRightTextMargin), height: height)
        
        if let navigationBar = navigationController?.navigationBar {
            let navBarHeight = navigationBar.getHeight()
            
            let goodFirstSize = firstTextLabel.sizeThatFits(adjustedSize)
            firstTextLabel.frame = CGRect(x: kLeftTextMargin,
                                      y: navBarHeight + CGFloat.convertHeight(h: kNavBarToFirst, screenSize: screenSize),
                                      width: adjustedSize.width,
                                      height: goodFirstSize.height)
            
            let goodSecondSize = secondTextLabel.sizeThatFits(adjustedSize)
            secondTextLabel.frame = CGRect(x: kLeftTextMargin,
                                            y: firstTextLabel.frame.maxY + CGFloat.convertHeight(h: kFirstToSecond, screenSize: screenSize),
                                            width: adjustedSize.width,
                                            height: goodSecondSize.height)
            
            let goodThirdSize = thirdTextLabel.sizeThatFits(adjustedSize)
            thirdTextLabel.frame = CGRect(x: kLeftTextMargin,
                                          y: secondTextLabel.frame.maxY + CGFloat.convertHeight(h: kSecondToThird, screenSize: screenSize),
                                          width: adjustedSize.width,
                                          height: goodThirdSize.height)

            let goodFourthSize = fourthTextLabel.sizeThatFits(adjustedSize)
            fourthTextLabel.frame = CGRect(x: kLeftTextMargin,
                                          y: thirdTextLabel.frame.maxY + CGFloat.convertHeight(h: kThirdToFourth, screenSize: screenSize),
                                          width: adjustedSize.width,
                                          height: goodFourthSize.height)

            let newPossibleButtonWidth = self.view.bounds.width * 0.7
            let buttonWidth = (kTextButtonWidth <= newPossibleButtonWidth) ? kTextButtonWidth : newPossibleButtonWidth
            beginButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                       y: fourthTextLabel.frame.maxY + CGFloat.convertHeight(h: kFourthToBegin, screenSize: screenSize),
                                       width: buttonWidth,
                                       height: kTextButtonHeight)
            
        }
    }


}
