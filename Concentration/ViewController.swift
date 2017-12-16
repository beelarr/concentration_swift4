//
//  ViewController.swift
//  Concentration
//
//  Created by Bryon Larrance on 12/15/17.
//  Copyright © 2017 Bryon Larrance. All rights reserved.
//


// Top CocoTouch Layer
import UIKit

class ViewController: UIViewController {
    var game = Concentration()
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"

        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎄", "🎅", "⛄️", "🎁", "🎄", "🎅", "⛄️", "🎁" ]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        
    }
    

    //            external internal
    func flipCard(withEmoji emoji: String, on button: UIButton) {
//        print("flipCard(withEmoji: \(emoji))")
            if button.currentTitle == emoji {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 0.1605539969, blue: 0.1419745759, alpha: 1)
            } else {
                button.setTitle(emoji, for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }
        }
        
    }



