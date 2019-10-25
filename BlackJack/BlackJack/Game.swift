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
    var deck = Card.newDeck(aceValue: 1)
    var player = Player(score: 0, cards: [Card](), playerName: "Anna")
    var hitPlayer = true

    // computed properites
    var hasMoreCards: Bool {
    return !deck.isEmpty
    }
    
    var randomComputerScore: Int {
    return Int.random(in: 18...21)
    }
    
    // methods(functions)
    func newGame() {
        player.score = 0 // something else here, not score
        deck = Card.newDeck(aceValue: 1)
    }

    // stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
    func stopHits() {
        if player.score >= 21 {
        print("Would you like to play again? (yes, no)")
        let shouldContinuePlaying = readLine() ?? ""
//        } if shouldContinuePlaying == "yes" {
           game.newGame()
           playAgain = true
           } else {
           playAgain = false
        }
        }

    // hitMe() called as the user requests more cards from the deck
    func hitMe() -> Int  {
        
        var shuffle = deck.shuffled()
        var aCard = shuffle.popLast()
        if let aCardunwrapped = aCard{
        player.cards.append(aCardunwrapped)
        player.score += aCardunwrapped.value
            print(aCardunwrapped.stringify())
        }
        print("Your score is \(player.score)")
        
        
        if player.score >= 21 {
               print ("You won!")
        } else {
               print("")
        }

        return player.score
    }
    
 // computerVsPlayer() draws a random number for the computer and determines the winner of the game.
    func computerVsPlayer() {
       var randomComputerScore = Int.random(in: 18...21)
       var randomPlayerScore = Int.random(in: 18...21)
            
              if randomPlayerScore > randomComputerScore {
                  print("You scored higher than the computer. You win!")
              } else {
                  print("The computer scored higher than you. Computer wins!")
              }
        
    }
    
//  gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
    
//    func gameStatus(_ playersCard: String) {
//        switch playersCard {
//        case "BlackJack":
//            print("")
//        case "Bust":
//            print("")
//        case "Continue Playing":
//            print("\(Game.newgame())")
//        default:
//            print("Type is unavailable")
//        }
//    }
//}


}
