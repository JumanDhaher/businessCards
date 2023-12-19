//
//  MyCard.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct MyCard: View {
    var body: some View {
        NavigationView {
            ScrollView{
            VStack{
                Card1()
                Card2()
                Card3()
                Card4()
                Card5()
            }
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity).background(.back1)
            
            .navigationTitle("My Card")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Add your action here
                    }) {
                        Image(systemName: "plus.app")
                            .foregroundColor(.darkpurple)
                    }
                }
            }
              }
    }
}

#Preview {
    MyCard()
}
