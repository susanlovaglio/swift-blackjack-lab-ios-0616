//
//  Deck.swift
//  swift-blackjack-lab
//
//  Created by susan lovaglio on 8/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Deck{
    
    private var remainingCards: [Card] = []
    private var dealtCards: [Card] = []
    
    var description: String {return getDescription()}
    
    init(){
        
        self.dealtCards = []
        self.remainingCards = generateCards()
        
    }
    
    func generateCards() -> [Card]{
        
        var deck = [Card]()
        let suits = Card.validSuits()
        let ranks = Card.ValidRanks()
        
        for suit in suits{
            
            for rank in ranks{
                
                let newCard = Card.init(suit: suit, rank: rank)
                
                deck.append(newCard)
            }
            
        }
        
        return deck
    }
    
    func drawCard()-> Card{
        
        let card: Card = remainingCards.first!
            dealtCards.append(card)
            remainingCards.removeAtIndex(0)
        return card
    }
    
    func shuffle(){
        
        remainingCards.appendContentsOf(dealtCards)
        var newDeck = remainingCards
        remainingCards.removeAll()
        
        for _ in newDeck{
            
        let randomIndex = Int(arc4random_uniform(UInt32(newDeck.count)))
        remainingCards.insert(newDeck[randomIndex], atIndex: 0)
        newDeck.removeAtIndex(randomIndex)
        }
        dealtCards.removeAll()
    }
    
    private func getDescription() -> String {
        var description = "Deck"
        description += "\n  Cards Remaining: "
        description += descriptionForCardArray(remainingCards)
        description += "\n  Cards Dealt: "
        description += descriptionForCardArray(dealtCards)
        
        return description
    }
}
    func descriptionForCardArray(cardArray: [Card]) -> String {
        var description = "\(cardArray.count)"
        var count = 0
        for card in cardArray {
            if count % 13 == 0 {
                description += "\n   "
            }
            description += " \(card.description)"
            count += 1
        }
        return description
    }
    


