//
//  Card3.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct Card3: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.cardcolor)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            Rectangle()
                .fill(Color.purple)
                .frame(width: 180, height: 200)
                .padding(.leading, 160)
            
           
            
        }
    }
}

#Preview {
    Card3()
}
