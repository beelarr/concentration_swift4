//
//  Card.swift
//  Concentration
//
//  Created by Bryon Larrance on 12/16/17.
//  Copyright © 2017 Bryon Larrance. All rights reserved.
//

import Foundation
// No Inheritance with struct, value type. They get copied
// How they are displayed not what is on them/displayed
struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
//    Stored with Card type not card
    static var indentifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        indentifierFactory += 1
        return indentifierFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
