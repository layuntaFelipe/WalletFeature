//
//  ContentView.swift
//  WalletFeature
//
//  Created by Felipe Lobo on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WalletView(cardsNumber: cards.count, cards: cards, show: false)
            .animation(.easeIn)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
