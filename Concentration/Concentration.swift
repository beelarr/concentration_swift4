//
//  Concentration.swift
//  Concentration
//
//  Created by Bryon Larrance on 12/16/17.
//  Copyright © 2017 Bryon Larrance. All rights reserved.
//

import Foundation
// reference type
class Concentration
{
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int
    
    func chooseCard(at index: Int){
        if !cards[index].isMatched {
            
        }
    }
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]

        }
//        TODO: Shuffle the cards
    }
}
