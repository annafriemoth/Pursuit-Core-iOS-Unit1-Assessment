//
//  Game.swift
//  BlackJack
//
//  Created by Anna Friemoth on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {

    // instance properties
    var deck: [Card]
    var player: Player
    var hitPlayer: Bool

    

    // computed properites
    var hasMoreCards: Bool
    var randomComputerScore: Int

    
    // designated initializer
    init(deck: [Card],
         player: Player,
         hitPlayer: Bool,
         hasMoreCards: Bool,
         randomComputerScore: Int) {
        self.deck = deck
        self.player = player
        self.hitPlayer = hitPlayer
        self.hasMoreCards = hasMoreCards
        self.randomComputerScore = randomComputerScore
    }

    // methods(functions)
    func newGame() {
    print("Would you like to keep playing? (yes, no)")
    let shouldContinuePlaying = readLine() ?? ""
    if shouldContinuePlaying == "yes" {
    game.reset()
    playAgain = true
    } else {
    playAgain = false
    }
    }

    // stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
    func stopHits() {
        randomComputerScore = Int.random(in 1...100)
    }
    
    // hitMe() called as the user requests more cards from the deck
    func hitMe() {
        
    }
    
    // computerVsPlayer() draws a random number for the computer and determines the winner of the game.
    func computerVsPlayer() {
        randomComputerScore = Int.random(in 1...100)
    }
    
    // gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
    func gameStatus() {
        switch playersCard {
        case "BlackJack":
        case "Bust":
        case "Continue Playing":
        }
    }
}
