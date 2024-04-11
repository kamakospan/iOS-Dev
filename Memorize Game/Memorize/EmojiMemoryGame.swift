//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kamazhay Kospan on 01.03.2024.
//

import SwiftUI

func createCardContent(forPairAtIndex index: Int) -> String {
    return ["🚀","💅🏻","😈","🦾", "🌏", "🤡", "🤝", "🎃", "💃🏻", "🧵", "⛑️"][index]
}

class EmojiMemoryGame {
    private var model = MemoryGame(numberOfPairsOfCards: 4, cardContentFactory: createCardContent)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }

    func choose (_ card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
