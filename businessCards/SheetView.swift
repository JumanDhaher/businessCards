//
//  SheetView.swift
//  businessCards
//
//  Created by Juman Dhaher on 11/06/1445 AH.
//

import SwiftUI
import PassKit

struct SheetView: View {
    @State var card: BusinessCards    
    var body: some View {
        VStack{
            HStack{
               Text("Card")
                Spacer()
                
                Image(systemName: "square.and.arrow.up")
            }.padding()
        
            if(card.cardDesginID == 1){
                Card1(card: card)
                    .frame(width: 343, height: 200)
                    .padding()
            }else if(card.cardDesginID == 2){
                Card2(card: card)
                    .frame(width: 343, height: 200)
                    .padding()
            }else if(card.cardDesginID == 3){
                Card3(card: card)
            }else if(card.cardDesginID == 4){
                Card4(card: card)
            }else if(card.cardDesginID == 5){
                Card5(card: card)
            }
            Spacer(minLength: 20)
                
            NavigationLink {
                EditCard(card: card)
            } label: {
                Text("Edit Card").frame(width: 355,height: 40, alignment: .center).foregroundColor(.white).background(.darkpurple).cornerRadius(12).shadow(radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,y: 10)
            }
        }
    }
    
}

