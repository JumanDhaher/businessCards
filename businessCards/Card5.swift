//
//  Card5.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct Card5: View {
    @State var card: BusinessCards
    @Binding var colorSelect: Color
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 0)
                .fill(colorSelect)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            HStack{
                Text(card.name)
                Divider()
                    .frame(width: 3 , height: 160)
                    .overlay(.white)
                Text(card.address)
            }
           
                
           
            
        }
    }
}


