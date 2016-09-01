//
//  House.swift
//  swift-blackjack-lab
//
//  Created by susan lovaglio on 8/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class House: Player {

//    var wallet: UInt
    var mustHit: Bool{
        
        if handscore >= 17{
            return false
        }
        return true
    }
    
    override init(name: String) {
        
        super.init(name: name)
        self.tokens = 1000
    }
    
    
    
}
