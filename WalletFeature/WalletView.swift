//
//  WalletView.swift
//  WalletFeature
//
//  Created by Felipe Lobo on 24/05/21.
//

import SwiftUI

struct WalletView: View {
    //MARK: - PROPERTIES
    @State var distance: CGFloat = -180
    @State var cardsNumber: Int
    @State var cards: [Card]
    @State var show: Bool
    //MARK: - BODY
    var body: some View {
        VStack(spacing: distance){
            ForEach(0..<cardsNumber) {number in
                Button(action: {
                    print("HI im the card: \(number)")
                }, label: {
                    ZStack{
                        Color(.brown)
                            .frame(width: 325, height: 190)
                            .cornerRadius(20)
                        CardView(balance: cards[number].cardBalance, name: cards[number].cardName, firstColor: cards[number].cardFirstColor, secondColor: cards[number].cardSecondColor, offSet: cards[number].cardOffset)
                            .frame(width: 300, height: 186)
                            .shadow(color: Color(.black).opacity(0.5), radius: 5, x: 0.0, y: -5)
                    }//ZSTACK
                })//BUTTON
            }//LOOP
            ZStack{
                Color(.brown)
                    .frame(width: 325, height: 190)
                    .cornerRadius(20)
                    .shadow(color: Color(.black).opacity(0.5), radius: 5, x: 0.0, y: -5)
                
                Button(action: {
                    show.toggle()
                    if show{
                        distance = -130
                    } else {
                        distance = -18
                    }
                }, label: {
                    if show{
                        Image(systemName: "arrow.up")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color(.black).opacity(0.5))
                    } else {
                        Image(systemName: "arrow.down")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color(.black).opacity(0.5))
                    }
                })//BUTTON
            }//ZSTACK
        }//VSTACK
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView(cardsNumber: cards.count, cards: cards, show: false)
    }
}
