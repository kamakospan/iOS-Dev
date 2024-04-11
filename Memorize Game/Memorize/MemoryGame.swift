//
//  MemoryGame.swift
//  Memorize
//
//  Created by Kamazhay Kospan on 01.03.2024.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card> // dont care
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))

        }
    }
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        let content: CardContent
        
    }
}

