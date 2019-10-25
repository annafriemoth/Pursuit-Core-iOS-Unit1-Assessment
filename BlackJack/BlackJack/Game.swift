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
        score = 0 // something else here, not score
        deck.removeAll()
    }

    // stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
    func stopHits() {
        
        var randomPlayerScore = Int.random(in: 18...21)
        var randomComputerScore = Int.random(in: 18...21)
        if randomPlayerScore > randomComputerScore {
            print("You scored higher than the computer. You win!")
        } else {
            print("The computer scored higher than you. Computer wins!")
        }
        //STOP GAME HERE
    }
    
    // hitMe() called as the user requests more cards from the deck
    func hitMe() {
        
    }
    
    // computerVsPlayer() draws a random number for the computer and determines the winner of the game.
    func computerVsPlayer() {
        randomComputerScore = Int.random(in: 1...100)
    }
    
    // gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
    //
    func gameStatus(_ playersCard: String) {
        switch playersCard {
        case "BlackJack": // 18? 21? WHAT IS THE CURRENT SCORE HERE
        case "Bust": //
        case "Continue Playing":
        default:
            print("Type is unavailable")
        }
    }
}
