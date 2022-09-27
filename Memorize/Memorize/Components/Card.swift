//
//  Card.swift
//  Memorize
//
//  Created by Kire  on 9/26/22.
//

import SwiftUI

struct Card: View{
    var emoji: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.red, lineWidth: 4)
                .frame(width: 150,height: 200)
            Text(emoji)
        }
        .frame(minWidth: 155, maxHeight: 205)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(emoji: "❤️")
    }
}



