//
//  ContentView.swift
//  Memorize
//
//  Created by Kamazhay Kospan on 01.03.2024.
//

import SwiftUI

struct ContentView: View { //___ behaves like a ___ view
    var viewModel: EmojiMemoryGame
    
    let emojis: Array<String> = ["🚀","💅🏻","😈","🦾", "🌏", "🤡", "🤝", "🎃", "💃🏻", "🧵", "⛑️"]
    
    @State var cardCount: Int = 10
    
    var body: some View {
        VStack {// cond list no for loop
            ScrollView{
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
        
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) { // implicit return when you have oneline of code
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index]).aspectRatio(2/3, contentMode: .fit)
            }
        }.foregroundColor(.green)
    }
    
    var cardCountAdjusters: some View {
        HStack{
            cardRemover
            Spacer()
            cardAdder
        }.imageScale(.large)
            .font(.largeTitle)
    }
    
    func cardCountAdjuster(by offset: Int, symbol:String) -> some View {
        Button(action: {
            cardCount += offset }, label: {
                Image(systemName: symbol)
            })
    }
    
    var cardRemover: some View {
        cardCountAdjuster(by: -1, symbol: "trash")
    }

        
    var cardAdder: some View {
        cardCountAdjuster(by: 1, symbol: "plus")
        }
        }

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack (alignment: .center) {
            let base = RoundedRectangle(cornerRadius: 25.0)
            Group {
                RoundedRectangle(cornerRadius: 12.0).foregroundColor(.white) // behaves like a view & shape
                RoundedRectangle(cornerRadius: 12.0).strokeBorder(lineWidth: 2) // behaves like a view & shape
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
            }.onTapGesture (count: 2) {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
