//
//  GameMaker.swift
//  Text Adventure
//
//  Created by Bryan Miller on 5/1/17.
//  Copyright © 2017 Bryan Miller. All rights reserved.
//

import UIKit

class GameMaker {

    static func makeMap() -> Map {
        let n = 8
        let map: Map = Map(n: n)
        
        // set everything in map
        let place00 = Place(name: "sea", description: "On water", item: "")
        map.setPlaceAt(place: place00, x: 0, y: 0)
        
        let place10 = Place(name: "sea", description: "The water is deep here, we better head back to the church", item: "")
        map.setPlaceAt(place: place10, x: 1, y: 0)
        
        let place20 = Place(name: "sea", description: "the water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place20, x: 2, y: 0)
        
        let place30 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place30, x: 3, y: 0)
        
        let place40 = Place(name: "Lighthouse", description: "Ah, the lighthouse, we finally made it. Hopefully we have everything we need to send that signal, I think we're safe now", item: "win")
        map.setPlaceAt(place: place40, x: 4, y: 0)
        
        let place50 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place50, x: 5, y: 0)
        
        let place60 = Place(name: "sea", description: "The water is deep here, we better head back to the mansion", item: "")
        map.setPlaceAt(place: place60, x: 6, y: 0)
        
        let place70 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place70, x: 7, y: 0)
        
        let place01 = Place(name: "sea", description: "The water is deep here, we better head back to the church", item: "")
        map.setPlaceAt(place: place01, x: 0, y: 1)
        
        let place11 = Place(name: "Church", description: "Creepy old amish church, looks like no one has been here in years", item: "golden key")
        map.setPlaceAt(place: place11, x: 1, y: 1)
        
        let place21 = Place(name: "beach", description: "There's a little beach, it is very peaceful here", item: "")
        map.setPlaceAt(place: place21, x: 2, y: 1)
        
        let place31 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place31, x: 3, y: 1)
        
        let place41 = Place(name: "Bridge", description: "A rickety bridge that has been poorly fixed by theft of a seesaw. The lighthouse is just ahead, do we have everything we need to send that beacon signal?", item: "")
        map.setPlaceAt(place: place41, x: 4, y: 1)
        
        let place51 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place51, x: 5, y: 1)
        
        let place61 = Place(name: "Rich Mansion", description: "This must be the place where the rich hide during the festivals, I bet there's some good stuff in there, if only we had the key", item: "lighthouse key")
        map.setPlaceAt(place: place61, x: 6, y: 1)
        
        let place71 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place71, x: 7, y: 1)
        
        let place02 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place02, x: 0, y: 2)
        
        let place12 = Place(name: "Cliffs", description: "There is an extremely old church nearby on the coast", item: "")
        map.setPlaceAt(place: place12, x: 1, y: 2)
        
        let place22 = Place(name: "Cliffs", description: "Wow, this purge must do wonders for the overpopulation problem, I mean, look at the size of this cemetery below", item: "")
        map.setPlaceAt(place: place22, x: 2, y: 2)
        
        let place32 = Place(name: "cliffs", description: "From these cliffs you see a large cemetery with a church past it in one direction and a lighthouse of in the distance in another", item: "")
        map.setPlaceAt(place: place32, x: 3, y: 2)
        
        let place42 = Place(name: "cliffs", description: "There is a broken bridge just north of these cliffs, looks like we'll need something to help get across it, but the lighthouse is on the other side", item: "")
        map.setPlaceAt(place: place42, x: 4, y: 2)
        
        let place52 = Place(name: "cliffs", description: "These cliffs seem pretty high, we better be careful not to fall", item: "")
        map.setPlaceAt(place: place52, x: 5, y: 2)
        
        let place62 = Place(name: "cliffs", description: "More cliffs, there's a massive mansion in the distance, but it looks like it's on lock down and requires a key", item: "")
        map.setPlaceAt(place: place62, x: 6, y: 2)
        
        let place72 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place72, x: 7, y: 2)
        
        let place03 = Place(name: "forest", description: "We're getting too far away from anything helpful, we better head back", item: "")
        map.setPlaceAt(place: place03, x: 0, y: 3)
        
        let place13 = Place(name: "Cemetery", description: "This cemetery is absolutely massive, there's a surprisingly familiar building nearby. There's also a church on the other side of these cliffs. But how do we get there?", item: "")
        map.setPlaceAt(place: place13, x: 1, y: 3)
        
        let place23 = Place(name: "Cemetery", description: "This cemetery looks bigger than the town. There are cliffs just north and a creepy playground nearby too", item: "")
        map.setPlaceAt(place: place23, x: 2, y: 3)
        
        let place33 = Place(name: "Spacecraft", description: "There is a spacecraft in the middle of some wheat here, but where did the key go? There are cliffs to the north where the lighthouse is way off in the distance, but they're too steep to climb", item: "beacon")
        map.setPlaceAt(place: place33, x: 3, y: 3)
        
        let place43 = Place(name: "wheat field", description: "Wheat as far as the eye can see, except for that farm nearby, and those cliffs to the north, we'll need something to climb them", item: "")
        map.setPlaceAt(place: place43, x: 4, y: 3)
        
        let place53 = Place(name: "small forest", description: "A tiny area where a lot of trees are growing, you can barely see through them and see what looks like cliffs just north", item: "")
        map.setPlaceAt(place: place53, x: 5, y: 3)
        
        let place63 = Place(name: "beach", description: "The beach looks like a nice retreat from the purge happening near the town, cliffs are just north", item: "")
        map.setPlaceAt(place: place63, x: 6, y: 3)
        
        let place73 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place73, x: 7, y: 3)
        
        let place04 = Place(name: "forest", description: "The forest is too thick to go deeper, let's go back", item: "")
        map.setPlaceAt(place: place04, x: 0, y: 4)
        
        let place14 = Place(name: "General Store", description: "Vague memories pop up about a nice guy selling you some windshield wipers or something at this empty general store", item: "windshield wiper fluid")
        map.setPlaceAt(place: place14, x: 1, y: 4)
        
        let place24 = Place(name: "Playground", description: "A nice little playground, it's kind of morbid though that there's a smell of dead people nearby", item: "plank from the seesaw")
        map.setPlaceAt(place: place24, x: 2, y: 4)
        
        let place34 = Place(name: "field", description: "A field that looks like fun to run around in with small hills, but there's a creepy old farm in one direction and another creepy playground in the other", item: "")
        map.setPlaceAt(place: place34, x: 3, y: 4)
        
        let place44 = Place(name: "farm", description: "This farm looks old and abandoned, probably because the farmer is out purging", item: "")
        map.setPlaceAt(place: place44, x: 4, y: 4)
        
        let place54 = Place(name: "wheat field", description: "Just how much wheat does this guy farm? oh and there's a farm nearby", item: "")
        map.setPlaceAt(place: place54, x: 5, y: 4)
        
        let place64 = Place(name: "beach", description: "More beaches, it's kind of reminiscent of home", item: "")
        map.setPlaceAt(place: place64, x: 6, y: 4)
        
        let place74 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place74, x: 7, y: 4)
        
        let place05 = Place(name: "forest", description: "The forest is too thick to go deeper, let's go back", item: "")
        map.setPlaceAt(place: place05, x: 0, y: 5)
        
        let place15 = Place(name: "town", description: "The outskirts of town, if we're going to head in there, we need something to defend ourselves", item: "")
        map.setPlaceAt(place: place15, x: 1, y: 5)
        
        let place25 = Place(name: "town", description: "If we're going to head into town, we need something to defend ourselves", item: "")
        map.setPlaceAt(place: place25, x: 2, y: 5)
        
        let place35 = Place(name: "town", description: "You see a town in the distance, it looks dangerous over there", item: "")
        map.setPlaceAt(place: place35, x: 3, y: 5)
        
        let place45 = Place(name: "Barn", description: "The farmer's barn, it's probably just filled with some wheat", item: "gun")
        map.setPlaceAt(place: place45, x: 4, y: 5)
        
        let place55 = Place(name: "wheat field", description: "You see more wheat, but it looks like there is an empty barn in one direction and an abandoned building in the other, but it looks like the abandoned building has lights on so we may need a defensive weapon", item: "")
        map.setPlaceAt(place: place55, x: 5, y: 5)
        
        let place65 = Place(name: "beach", description: "Honestly surprised that it's not more wheat. It's a beach, with really deep looking water to the south", item: "")
        map.setPlaceAt(place: place65, x: 6, y: 5)
        
        let place75 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place75, x: 7, y: 5)
        
        let place06 = Place(name: "forest", description: "The forest is too thick to go deeper, let's go back", item: "")
        map.setPlaceAt(place: place06, x: 0, y: 6)
        
        let place16 = Place(name: "town", description: "The rest of the town, do we have that gun yet?", item: "")
        map.setPlaceAt(place: place16, x: 1, y: 6)
        
        let place26 = Place(name: "town square", description: "The middle of town, maybe there's something useful, maybe not", item: "ladder")
        map.setPlaceAt(place: place26, x: 2, y: 6)
        
        let place36 = Place(name: "town", description: "You hear a mixture of shouting and screaming off in the distance near the town square, we need a defensive weapon", item: "")
        map.setPlaceAt(place: place36, x: 3, y: 6)
        
        let place46 = Place(name: "road", description: "This road looks like it connects the town to the farm", item: "")
        map.setPlaceAt(place: place46, x: 4, y: 6)
        
        let place56 = Place(name: "Abandoned Building", description: "An abandoned building is here, but it looks quiet so we should be safe with a gun or something", item: "strange looking key")
        map.setPlaceAt(place: place56, x: 5, y: 6)
        
        let place66 = Place(name: "beach", description: "The sand at the beach is very soft this time of year", item: "")
        map.setPlaceAt(place: place66, x: 6, y: 6)
        
        let place76 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place76, x: 7, y: 6)
        
        let place07 = Place(name: "forest", description: "The forest is too thick to go deeper, let's go back", item: "")
        map.setPlaceAt(place: place07, x: 0, y: 7)
        
        let place17 = Place(name: "forest", description: "The forest is too thick to go deeper, let's go back", item: "")
        map.setPlaceAt(place: place17, x: 1, y: 7)
        
        let place27 = Place(name: "forest", description: "The forest is too thick to go deeper, let's go back", item: "")
        map.setPlaceAt(place: place27, x: 2, y: 7)
        
        let place37 = Place(name: "forest", description: "The forest is too thick to go deeper, let's go back", item: "")
        map.setPlaceAt(place: place37, x: 3, y: 7)
        
        let place47 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place47, x: 4, y: 7)
        
        let place57 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place57, x: 5, y: 7)
        
        let place67 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place67, x: 6, y: 7)
        
        let place77 = Place(name: "sea", description: "The water is deep here, we better head back", item: "")
        map.setPlaceAt(place: place77, x: 7, y: 7)

        
        return map
    }
    
}
