//
//  MyCard.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI
import SwiftData

struct MyCard: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \BusinessCards.id, order: .forward, animation: .smooth) var cards: [BusinessCards]
      
    var body: some View {
        ScrollView{
            if cards.isEmpty {
                NavigationLink(destination: CreateCard(), label:{
                    Text("Press '+' to add new cards").foregroundColor(.darkpurple)
                })
            }else {
                ForEach(cards ,id: \.self) {
                    card in
                    NavigationLink {
                        EditCard(card: card)
                    } label: {
                        ZStack(alignment: .leading) {
                                Card5(card: card)
                                Button("Delete", role: .destructive) {
                                    modelContext.delete(card)
                                }.offset(x: 290, y: 80)
                            
                        }
                    } }
                /* VStack{
                 Card1()
                 Card2()
                 Card3()
                 Card4()
                 Card5()
                 }*/
              
            }
        } .frame(maxWidth: .infinity, maxHeight: .infinity).background(.back1)
            .navigationTitle("My Card")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        CreateCard()
                    } label: {
                        Image(systemName: "plus.app")
                            .foregroundColor(.darkpurple)
                    }
                }
            }
    }
}

#Preview {
    MyCard()
}

