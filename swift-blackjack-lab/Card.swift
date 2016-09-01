//
//  Crad.swift
//  swift-blackjack-lab
//
//  Created by susan lovaglio on 8/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Card {

    var suit: String
    var rank: String
    var cardLabel: String
    var cardValue: UInt = 0
    var description: String { return cardLabel}
    
    init(suit: String, rank: String){
        
        self.suit = suit
        self.rank = rank
        self.cardLabel = "\(suit)\(rank)"
        self.cardValue = UInt(calculateValue(rank))
    }
    
    func calculateValue(ranks: String) -> Int{

        var value = 0
       
        switch ranks {
            
        case "A":
            value = 1
        case "Q":
            value = 10
        case "K":
            value = 10
        case "J":
            value = 10
            
        default:
            value = Int(ranks)!
        }
        
        return value
    }
    
    class func validSuits() -> [String]{
        
        return ["♣︎","♠︎","♥︎","♦︎"]
    }
    
    class func ValidRanks() -> [String]{
        
        return ["K", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "A"]
    }

}
