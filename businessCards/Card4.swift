//
//  Card4.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct Card4: View {
    @State var card: BusinessCards

    @Binding var colorSelect: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.darkgray)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            Rectangle()
                .fill(colorSelect)
                .frame(width: 140, height: 200)
                .padding(.leading, -172)
            
           
            
        }   
    }
}

//#Preview {
//    Card4()
//}
