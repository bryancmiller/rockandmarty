//
//  MainMenuViewController.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var howToButton: UIButton!
    @IBOutlet weak var creditsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let navigationBar = navigationController?.navigationBar {
            self.navigationItem.title = "Menu"
            navigationBar.setCustomStyle()
        }
        
        startButton.layer.cornerRadius = 5
        startButton.clipsToBounds = true
        howToButton.layer.cornerRadius = 5
        howToButton.clipsToBounds = true
        creditsButton.layer.cornerRadius = 5
        creditsButton.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
