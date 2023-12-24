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
    @State var showSheet = false

    var body: some View {
        ScrollView{
            if cards.isEmpty {
                NavigationLink(destination: CreateCard(), label:{
                    Text("Press '+' to add new cards").foregroundColor(.darkpurple)
                })
            }else {
                ForEach( self.cards, id: \.self) {
                    card in
                    Button(action:{self.showSheet = true}){
                        ZStack(alignment: .leading) {
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
                            Button("Delete", role: .destructive) {
                                modelContext.delete(card)
                            }.offset(x: 290, y: 80)
                            
                        }
                    }.sheet(isPresented:$showSheet){
                        NavigationView {  
                            SheetView(card : card )
                        }
                     
                    }
                }
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


