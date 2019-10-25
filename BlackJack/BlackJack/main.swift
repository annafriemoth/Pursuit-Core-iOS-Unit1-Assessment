//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// TODO: remove these lines after you have added the Suit and FaceCard enums as per the assessment README


var playAgain = true


// 1. Create an instance of the Game()
let game = Game() // (does this need anything in the () after Game?)



// 2. Call newGame on the newly created instance above.

game.newGame()

// 3. Create a gameOver instance and set it to false. This will be used in your repeat-while to determine if game play should stop.

var gameOver = false




repeat {

//print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")
// There are 52 in a deck of cards

    let cardString = Card.newDeck(aceValue: 1).randomElement()!.stringify()
    print(cardString)


    print("Your score is \(player.score) Do you want to hit or pass?")
var choice = readLine()?.lowercased()
    switch choice {
    case "hit":
        print("\(game.hitMe())")
    case "pass":
        print("\(game.stopHits())")
    default:
        print("default")
        }
    




// 5. When the player has won or lost ask them if they would wish to continue playing another round.

    
} while playAgain
