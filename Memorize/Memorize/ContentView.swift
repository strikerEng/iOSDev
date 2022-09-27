//
//  ContentView.swift
//  Memorize
//
//  Created by Kire  on 9/26/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: SET?
    @State var emojiCards: [String] = ["🐣", "💆🏽‍♂️", "🍒"]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack{
                VStack{
                    ForEach(emojiCards, id: \.self){ emojiCard in
                        Card(emoji: emojiCard)
                    }
                    .padding()
                }
                VStack{
                    ForEach(emojiCards, id: \.self){ emojiCard in
                        Card(emoji: emojiCard)
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
