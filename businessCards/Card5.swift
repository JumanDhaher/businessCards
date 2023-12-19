//
//  Card5.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct Card5: View {
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.indigo)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            HStack{
              Text("hello")
                Divider()
                    .frame(width: 3 , height: 160)
                    .overlay(.white)
                Text("welcome")
            }
           
                
           
            
        }
    }
}

#Preview {
    Card5()
}
