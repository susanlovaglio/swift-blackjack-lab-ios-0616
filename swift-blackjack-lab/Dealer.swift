//
//  Dealer.swift
//  swift-blackjack-lab
//
//  Created by susan lovaglio on 8/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer{
    
    var deck = Deck()
    var house = House.init(name: "House")
    var player = House.init(name: "Player")
    var bet: UInt = 0
    
    func placeBet(amount: UInt) -> Bool{
        
        bet = amount
        
        if bet <= house.tokens && bet <= player.tokens{
            
            return true
        }
        return false
    }
    
    func deal(){
        
        player.stayed = false
        house.stayed = false
        deck.shuffle()
        player.cards.removeAll()
        house.cards.removeAll()
        house.cards.append(deck.drawCard())
        player.cards.append(deck.drawCard())
        house.cards.append(deck.drawCard())
        player.cards.append(deck.drawCard())
    }
    
    func turn(house:House){
        
        if house.mayHit {
            print("\(house.name)'s turn:")
            if house.mustHit {
                house.cards.append(deck.drawCard())
                print("\(house.name) hits!")
                print(house)
            } else {
                house.stayed = true
                print("\(house.name) stays!")
            }
        }
    }
    
    func winner()-> String{
        
//        ("should return 'player' if the house and player have stayed and player's score exceeds the house's score"

        if house.stayed && player.stayed && player.handscore > house.handscore{
        
            return "player"
        }else if  house.stayed && player.stayed && player.handscore <= house.handscore{
            
            return "house"
        }else if house.blackjack == true && player.blackjack == false{
    
            return "house"
        }else if player.blackjack == true && house.blackjack == false {
            
            return "player"
        }else if player.busted {
            
            return "house"
        }else if house.busted{
            
            return "player"
        }else if player.cards.count == 5 && player.busted == false{
            
            return "player"
        }else if player.blackjack == true && house.blackjack == true{
            
            return "house"
        }
        
        return "no"
    }
    
    func award()->String{
        
        let winners = winner()
        
        switch winners {
        case "player":
            player.tokens += bet
            house.tokens -= bet
            return "\(player.name) wins"
        case "house":
            player.tokens -= bet
            house.tokens += bet
            return "\(house.name) wins"
        default:
            return "no winner"
        }
    }
}
