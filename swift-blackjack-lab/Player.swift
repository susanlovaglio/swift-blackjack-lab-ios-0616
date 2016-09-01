//
//  Player.swift
//  swift-blackjack-lab
//
//  Created by susan lovaglio on 8/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Player{
    
    var name: String
    var cards: [Card]
    var handscore: UInt { return getHandScore()}
    var blackjack: Bool {return handscore == 21 && cards.count == 2}
    var busted: Bool {return handscore > 21}
    var stayed: Bool
    var mayHit: Bool {return busted == false && blackjack == false && stayed == false}
    var tokens: UInt
    var description: String{ return getDebugDescription()}

    init(name: String){
        
        self.name = name
        self.cards = []
        self.stayed = false
        self.tokens = 100
    }
    
    func canPlaceBet(amount: UInt) -> Bool{
        
        if amount <= tokens{
            return true
        }
        return false
    }
    
    func didWin(winnings: UInt){
        
        return tokens += winnings
    }
    
    func didLose(losings: UInt){
        
        return tokens -= losings
    }
    
    private func getDebugDescription() -> String{
        
        var debug = "\n  Player: \(name)"
        debug += "\n  cardsInHand: "
        debug += descriptionForCardArray(cards)
        debug += "\n  handscore: \(handscore)"
        debug += "\n  blackjack: \(blackjack)"
        debug += "\n  busted   : \(busted)"
        debug += "\n  stayed   : \(stayed)"
        debug += "\n  tokens: \(tokens)"
        return debug
    }
    
    private func getHandScore() -> UInt{
        
        var score: UInt = 0
        var aceInHand = false
        
        if cards.count > 0{
            
            for card in cards{
                
                score = score + card.cardValue
                
                if card.rank == "A"{
                    
                    aceInHand = true
                }
            }
            
            if aceInHand == true && score < 12{
                
                score += 10
            }
        }
        return score
    }
    
}