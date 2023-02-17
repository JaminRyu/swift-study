//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jiaming Liu on 2022/11/03.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static var emojis = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊",
                         "🐻", "🐔", "🦁", "🐞", "🦄", "🐥",
                         "🪱", "🐙", "🦐", "🐠", "🦞", "🐝",
                         "🦧", "🐩"]
    
    
    private static func createMomoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMomoryGame()

    
    var cards: Array<Card> {
        model.cards
    }
    
    
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card){
        model.choose(card)
    }
}
