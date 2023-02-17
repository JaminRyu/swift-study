//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jiaming Liu on 2022/10/14.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
