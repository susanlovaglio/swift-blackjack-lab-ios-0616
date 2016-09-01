//
//  ViewController.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let newCard = Card.init(suit: "♠︎", rank: "10")
//        let otherCard = Card.init(suit: "♠︎", rank: "A")
//        
//        print(newCard.cardValue)
//        
//        let suits = Card.validSuits()
//        let ranks = Card.ValidRanks()
//        
//        print(suits, ranks)
//        
        let deck = Deck.init()
        deck.generateCards()
        
        print(deck.description)
//
//        deck.drawCard()
//        
//        print(deck.description)
//        
//        deck.shuffleCards()
//        
//        print(deck.description)
//        
//        let player = Player.init(name: "Susan")
//        
//        player.cards.append(newCard)
//        player.cards.append(newCard)
//        player.cards.append(otherCard)
//        
//        print(player.handscore)
//        print(player.description)
//        print(player.blackjack)
//        print(player.busted)
//        print(player.canPlaceBet(200))
//        
//        player.didWin(200)
//        
//        print(player.tokens)
//        
//        let house = House.init(name: "Ben")
//        house.cards.append(newCard)
//        house.cards.append(otherCard)
//        
//        print(house.description)
//        print(house.mustHit)
//        
//        let dealer = Dealer()
//        dealer.deal()
//        
//        print(dealer.house.description)
//        print(dealer.player.description)
        
    }
    
}

