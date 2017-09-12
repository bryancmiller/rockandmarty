//
//  GameViewController.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

let kGameButtonWidth: CGFloat = 93.0
let kGameButtonHeight: CGFloat = 37.0

let kGameObjectMargin: CGFloat = 12.0

let kNavBarToPlace: CGFloat = 35.0
let kPlaceToNorthButton: CGFloat = 35.0
let kNorthButtonToInspectButton: CGFloat = 20.0
let kInspectButtonToSouthButton: CGFloat = 20.0
let kSouthButtonToReprintButton: CGFloat = 20.0
let kInspectButtonToEastButton: CGFloat = 15.0
let kInspectButtonToWestButton: CGFloat = 15.0

class GameViewController: UIViewController {
    
    var ipod: AVAudioPlayer!
    var player: Player!
    var map: Map!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var northButton: UIButton!
    @IBOutlet weak var inspectButton: UIButton!
    @IBOutlet weak var eastButton: UIButton!
    @IBOutlet weak var westButton: UIButton!
    @IBOutlet weak var southButton: UIButton!
    @IBOutlet weak var reprintButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let navigationBar = navigationController?.navigationBar {
            self.navigationItem.title = "Adventure!"
            navigationBar.setCustomStyle()
        }
        
        northButton.layer.cornerRadius = 5
        northButton.clipsToBounds = true
        inspectButton.layer.cornerRadius = 5
        inspectButton.clipsToBounds = true
        eastButton.layer.cornerRadius = 5
        eastButton.clipsToBounds = true
        westButton.layer.cornerRadius = 5
        westButton.clipsToBounds = true
        southButton.layer.cornerRadius = 5
        southButton.clipsToBounds = true
        reprintButton.layer.cornerRadius = 5
        reprintButton.clipsToBounds = true

        self.map = GameMaker.makeMap()
        self.player = Player(maxX: map.n, maxY: map.n)
        reprintDescription()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let screenSize = self.view.bounds
        let width = screenSize.width
        let height = screenSize.height
        
        if let navigationBar = navigationController?.navigationBar {
            let navBarHeight = navigationBar.getHeight()
            
            let goodPlaceSize = CGSize(width: width - (2 * kGameObjectMargin), height: height * 0.35)
            descriptionTextView.frame = CGRect(x: kGameObjectMargin,
                                      y: navBarHeight + CGFloat.convertHeight(h: kNavBarToPlace, screenSize: screenSize),
                                      width: goodPlaceSize.width,
                                      height: goodPlaceSize.height)
            
            let scaledMargin = CGFloat.convertHeight(h: kGameObjectMargin, screenSize: screenSize)
            let totalMarginsOfThree: CGFloat = scaledMargin * 4.0
            let staticTotalWidthOfThree = (kGameButtonWidth * 3) + totalMarginsOfThree
            let buttonWidth = (staticTotalWidthOfThree <= width)
                ? kGameButtonWidth
                : (width - totalMarginsOfThree) / 3
            
            northButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                       y: descriptionTextView.frame.maxY + CGFloat.convertHeight(h: kPlaceToNorthButton, screenSize: screenSize),
                                       width: buttonWidth,
                                       height: kGameButtonHeight)
            
            inspectButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                       y: northButton.frame.maxY + CGFloat.convertHeight(h: kNorthButtonToInspectButton, screenSize: screenSize),
                                       width: buttonWidth,
                                       height: kGameButtonHeight)
            
            eastButton.frame = CGRect(x: inspectButton.frame.maxX + CGFloat.convertWidth(w: kInspectButtonToEastButton, screenSize: screenSize),
                                      y: inspectButton.frame.minY,
                                      width: buttonWidth,
                                      height: kGameButtonHeight)
            
            westButton.frame = CGRect(x: inspectButton.frame.minX - CGFloat.convertWidth(w: kInspectButtonToWestButton, screenSize: screenSize) - buttonWidth,
                                      y: inspectButton.frame.minY,
                                      width: buttonWidth,
                                      height: kGameButtonHeight)
            
            southButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                         y: inspectButton.frame.maxY + CGFloat.convertHeight(h: kInspectButtonToSouthButton, screenSize: screenSize),
                                         width: buttonWidth,
                                         height: kGameButtonHeight)
            
            reprintButton.frame = CGRect(x: width/2 - buttonWidth/2,
                                       y: southButton.frame.maxY + CGFloat.convertHeight(h: kSouthButtonToReprintButton, screenSize: screenSize),
                                       width: buttonWidth,
                                       height: kGameButtonHeight)
            
        }
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        playSound()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        stopSound()
    }
    
    @IBAction func checkPackButtonTapped(_ sender: Any) {
        descriptionTextView.text = player.getBackPackItems()
    }
    
    @IBAction func exitBarButtonItemTapped(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }

    @IBAction func moveLeftButtonTapped(_ sender: Any) {
        player.moveWest()
        reprintDescription()
    }
    @IBAction func moveUpButtonTapped(_ sender: Any) {
        player.moveNorth()
        reprintDescription()
    }
    @IBAction func moveRightButtonTapped(_ sender: Any) {
        player.moveEast()
        reprintDescription()
    }
    @IBAction func moveDownButtonTapped(_ sender: Any) {
        player.moveSouth()
        reprintDescription()
    }
    
    @IBAction func reprintDescriptionButtonTapped(_ sender: Any) {
        reprintDescription()
    }
    
    @IBAction func grabItemButtonTapped(_ sender: Any) {
        
        let place = map.placeFor(x: player.xPos, y: player.yPos)
        
        if (player.isInBackPack(item: "win")) {
            //self.dismiss(animated: true, completion: nil)
            navigationController?.popViewController(animated: true)
        }
        
        else if (place.item == "") {
            descriptionTextView.text = ("Doesn't look like there is anything useful here, let's keep looking")
        }
            
        else if (place.item == "lighthouse key" && player.isInBackPack(item: "golden key")) {
            descriptionTextView.text = ("You put the golden key in the door and open it up, around you are all the aristocrats hiding from the purge outside, but they've already all been slaughtered... weird. But anyway, on the wall is another key. Hey, it looks like the lighthouse key, that's pretty sweet.")
            if (!player.isInBackPack(item: "lighthouse key")) {
                player.addToBackPack(item: place.item)
            }
            else {
                descriptionTextView.text = ("Doesn't look like there is anything useful here, let's keep looking")
            }
        }
            
        else if (place.item == "beacon" && player.isInBackPack(item: "strange looking key")) {
            descriptionTextView.text = ("You press the fob and the spacecraft unlocks. You rummage around and find a beacon. This might be important for beacon sending")
            if (!player.isInBackPack(item: "beacon")) {
                player.addToBackPack(item: place.item)
            }
            else {
                descriptionTextView.text = ("Doesn't look like there is anything useful here, let's keep looking")
            }
        }
            
        else if (place.item == "beacon" && !player.isInBackPack(item: "strange looking key")) {
            descriptionTextView.text = ("Where did those keys go?")
        }
        
        else if (!player.isInBackPack(item: place.item) && place.item != "beacon" && place.item != "lighthouse key" && place.item != "win") {
            if (!player.isInBackPack(item: place.item)) {
                descriptionTextView.text = ("Hey! It looks like this " + place.item + " might be useful")
                player.addToBackPack(item: place.item)
            }
            else {
                descriptionTextView.text = ("Doesn't look like there is anything useful here, let's keep looking")
            }
        }
        
        else if (place.item == "win") {
            descriptionTextView.text = ("You sent the signal out to your family and they're on their way to save you from this horrible planet. Depending on how long they take you may be able to go back into town and have a little fun during this purge. Click inspect to exit, or just exit.")
            player.addToBackPack(item: place.item)
            
            stopSound()
            
            let url = Bundle.main.url(forResource: "evil morty - ending scene", withExtension: "wav")!
            
            do {
                ipod = try AVAudioPlayer(contentsOf: url)
                guard let ipod = ipod else { return }
                
                ipod.numberOfLoops = -1
                ipod.prepareToPlay()
                ipod.play()
            } catch let error as NSError {
                print(error.description)
            }
        }
    }
    
    func reprintDescription() {
        let place = map.placeFor(x: player.xPos, y: player.yPos)
        descriptionTextView.text = place.description
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "human_music", withExtension: "wav")!
        
        do {
            ipod = try AVAudioPlayer(contentsOf: url)
            guard let ipod = ipod else { return }
            
            ipod.numberOfLoops = -1
            ipod.prepareToPlay()
            ipod.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    func stopSound() {
        guard let ipod = ipod else { return }
        if (ipod.isPlaying) { ipod.stop() }
    }
}
