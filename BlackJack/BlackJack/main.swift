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


print("""
╦ ╦╔═╗╦  ╔═╗╔═╗╔╦╗╔═╗  ╔╦╗╔═╗  ╔╗ ╦  ╔═╗╔═╗╦╔═ ╦╔═╗╔═╗╦╔═
║║║║╣ ║  ║  ║ ║║║║║╣    ║ ║ ║  ╠╩╗║  ╠═╣║  ╠╩╗ ║╠═╣║  ╠╩╗
╚╩╝╚═╝╩═╝╚═╝╚═╝╩ ╩╚═╝   ╩ ╚═╝  ╚═╝╩═╝╩ ╩╚═╝╩ ╩╚╝╩ ╩╚═╝╩ ╩
""")



repeat {

//var continuePlaying = readLine()?.lowercased()

//print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")
// There are 52 in a deck of cards

//    let cardString = Card.newDeck(aceValue: 1).randomElement()!.stringify()
//    print(cardString)

//    repeat {

print("Do you want to hit or pass? (hit, pass)")
var choice = readLine()?.lowercased()
     
//    let _ = game.computerVsPlayer()
//
//    if game.randomComputerScore >= 21 {
//        print("You lose! The computer score higher than you. Do you want to continue playing? (yes, no)")
//        var continuePlaying = readLine()?.lowercased()
//        switch continuePlaying {
//               case "yes":
//                   let _ = game.newGame()
//               case "no":
//                   break
//               default:
//                print("what?")
//               }
        
        
        
//    }
    if game.player.score >= 21 {
            print ("You won! Do you want to continue playing? (yes, no) ")
        var continuePlaying = readLine()?.lowercased()
        switch continuePlaying {
        case "yes":
            let _ = game.newGame()
        case "no":
            break
        default:
         print("what?")
        }
        
     } else {
            print("")
     }
    
    switch choice {
    case "hit":
        let _ = game.hitMe()
        
    case "pass":
        print("\(game.stopHits())")
    default:
        print("default")
        }
 
//  if player.score >= 21 {
//              print ("You won!")
//          } else {
//              print("")
//          }

// 5. When the player has won or lost ask them if they would wish to continue playing another round.
                    
    
//    } while Player.score >= 21
    
} while playAgain


