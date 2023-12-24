//
//  cardColorPage.swift
//  businessCards
//
//  Created by shomokh aldosari on 07/06/1445 AH.
//

import SwiftUI
import SwiftData

struct CardColorPage: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var selectedCard: Int = 1
    @State private var colorSelect: String = "darkpurple"
   // @State var card: BusinessCards
    @State var card = BusinessCards(cardDesginID: 1, cardColor: "", name: "", email: "", phoneNumber: "", role: "", address: "", descriptions: "", instagram: "", x: "", website: "", logo: Data())
    
    let colorPalet = ["darkpurple", "darkgray","cardcolor"]
    var body: some View {
            NavigationView {
                VStack {
                    Text("Select Color")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(colorPalet, id: \.self) { color in
                                Rectangle()
                                    .fill(Color(color))
                                    .frame(width: 69, height: 49)
                                    .cornerRadius(8)
                                    .onTapGesture {
                                        self.colorSelect = color
                                        card = BusinessCards(
                                             cardDesginID: selectedCard,
                                             cardColor: colorSelect,
                                             name: card.name, email:  card.email, phoneNumber:  card.phoneNumber, role:  card.role, address:  card.address, descriptions:  card.descriptions,
                                             instagram:  card.instagram,x:  card.x,
                                             website:  card.website, logo:  card.logo)
                                    }
                                    .frame(alignment: .center)
                            }
                        }
                    }
                    if(colorSelect == "darkpurple"){
                        if selectedCard == 1 {
                            Card1(card: card )
                                .frame(width: 343, height: 200)
                                .padding()
                        } else if selectedCard == 2 {
                            Card2(card: card)
                                .frame(width: 343, height: 200)
                                .padding()
                        } else if selectedCard == 3 {
                            Card3(card: card)
                        } else if selectedCard == 4 {
                            Card4(card: card)
                        } else if selectedCard == 5 {
                            Card5(card: card)
                        }
                    }else if(colorSelect == "darkgray"){
                        if selectedCard == 1 {
                            Card1(card: card )
                                .frame(width: 343, height: 200)
                                .padding()
                        } else if selectedCard == 2 {
                            Card2(card: card)
                                .frame(width: 343, height: 200)
                                .padding()
                        } else if selectedCard == 3 {
                            Card3(card: card)
                        } else if selectedCard == 4 {
                            Card4(card: card)
                        } else if selectedCard == 5 {
                            Card5(card: card)
                        }
                    }else if(colorSelect == "cardcolor"){
                        if selectedCard == 1 {
                            Card1(card: card )
                                .frame(width: 343, height: 200)
                                .padding()
                        } else if selectedCard == 2 {
                            Card2(card: card)
                                .frame(width: 343, height: 200)
                                .padding()
                        } else if selectedCard == 3 {
                            Card3(card: card)
                        } else if selectedCard == 4 {
                            Card4(card: card)
                        } else if selectedCard == 5 {
                            Card5(card: card)
                        }
                    }
       

                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1..<6) { cardNumber in
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color.gray)
                                        .frame(width: 88, height: 52)
                                        .onTapGesture {
                                            selectedCard = cardNumber
                                            card = BusinessCards(
                                                 cardDesginID: selectedCard,
                                                 cardColor: colorSelect,
                                                 name: card.name, email:  card.email, phoneNumber:  card.phoneNumber, role:  card.role, address:  card.address, descriptions:  card.descriptions,
                                                 instagram:  card.instagram,x:  card.x,
                                                 website:  card.website, logo:  card.logo)
                                        }
                                   /* if(cardNumber == 1 ){
                                        Card1(card: card).frame(width: 45, height: 52).rond
                                    }else if(cardNumber == 2){
                                        Card2(card: card).frame(width: 45, height: 52)
                                    }*/
                                }
                            }
                        }
                    }
                    
                    Button(action: {
                            let card = BusinessCards(
                                cardDesginID: selectedCard,
                                cardColor: colorSelect,
                                name: card.name, email:  card.email, phoneNumber:  card.phoneNumber, role:  card.role, address:  card.address, descriptions:  card.descriptions,
                                instagram:  card.instagram,x:  card.x,
                                website:  card.website, logo:  card.logo)
                                modelContext.insert(card)
                                   do {
                                       try modelContext.save()
                                       presentationMode.wrappedValue.dismiss()
                                   } catch {
                                       print(error.localizedDescription)
                                   }
                               }, label: {
                                   Text("Next").frame(width: 355,height: 40, alignment: .center).foregroundColor(.white).background(.darkpurple).cornerRadius(12).shadow(radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,y: 10)
                               })
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray.opacity(0.1))
            }
        }
}


//var cardExample = BusinessCards(cardDesginID: 1, cardColor:"darkpurple" , name: "name", email: "", phoneNumber: "", role: "", address: "", descriptions: "", instagram: "", x: "", website: "", logo: "")


