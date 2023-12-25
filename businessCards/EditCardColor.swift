//
//  EditCardColor.swift
//  businessCards
//
//  Created by Juman Dhaher on 11/06/1445 AH.
//

import SwiftUI
import SwiftData

struct EditCardColor: View {
        @Environment(\.modelContext) private var modelContext
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        @State private var selectedCard: Int = 1
        @State private var colorSelect: String = "darkpurple"
        //@State var card: BusinessCards
        @State var card = BusinessCards(cardDesginID: 1, cardColor: "", name: "", email: "", phoneNumber: "", role: "", address: "", descriptions: "", instagram: "", x: "", website: "", logo: Data())
        @State private var isShowingDashboardView = false
        @State private var image =  UIImage(named: "xapp")!
        @State private var image2 =  UIImage(named: "xapp")!
        @State private var image3 =  UIImage(named: "xapp")!
        @State private var image4 =  UIImage(named: "xapp")!
        @State private var image5 =  UIImage(named: "xapp")!
        let colorPalet = ["darkpurple", "darkgray","cardcolor","darkred", "lightgreen", "lightblue","gold1"]
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
                        }else if(colorSelect == "darkred"){
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
                        }else if(colorSelect == "lightblue"){
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
                        }else if(colorSelect == "lightgreen"){
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
                        }else if(colorSelect == "gold1"){
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
                                  //  ZStack{
                                    
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color.gray)
                                            .frame(width: 88, height: 52)
                                            .overlay{
                                                

                                                if(cardNumber == 1 ){
                                                    VStack {
                                                        
                                                      
                                                     
                                                        Image(uiImage : image)
                                                            .resizable()
                                                            .frame(width: 170, height: 150)
                                                            .cornerRadius(20)
                                                    }
                                                }else if(cardNumber == 2){
                                                    VStack {
                                                        
                                                      
                                                     
                                                        Image(uiImage : image2)
                                                            .resizable()
                                                            .frame(width: 140, height: 90)
                                                       
                                                    }
                                                }
                                                else if(cardNumber == 3){
                                                    VStack {
                                                        
                                                      
                                                     
                                                        Image(uiImage : image3)
                                                            .resizable()
                                                            .frame(width: 100, height: 90)
                                                       
                                                    }
                                                }else if(cardNumber == 4){
                                                    VStack {
                                                        
                                                      
                                                     
                                                        Image(uiImage : image4)
                                                            .resizable()
                                                            .frame(width: 100, height: 90)
                                                       
                                                    }
                                                }else if(cardNumber == 5){
                                                    VStack {
                                                        
                                                      
                                                     
                                                        Image(uiImage : image5)
                                                            .resizable()
                                                            .frame(width: 100, height: 90)
                                                       
                                                    }
                                                }


                                                
                                            }
                                        
                                        
                                            .onTapGesture {
                                                selectedCard = cardNumber
                                                card = BusinessCards(
                                                     cardDesginID: selectedCard,
                                                     cardColor: colorSelect,
                                                     name: card.name, email:  card.email, phoneNumber:  card.phoneNumber, role:  card.role, address:  card.address, descriptions:  card.descriptions,
                                                     instagram:  card.instagram,x:  card.x,
                                                     website:  card.website, logo:  card.logo)
                                            }
                                      
                                   // }
                                }
                            }
                        }.onAppear{
                            getImgae()
                        }
           
                        
                      /*  ScrollView(.horizontal) {
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
                        }*/
                        Button(action: {
                            do {
                                try modelContext.save()
                                presentationMode.wrappedValue.dismiss()
                                isShowingDashboardView = true

                            } catch {
                                print(error.localizedDescription)
                            }
                        }, label: {
                            Text("Update").frame(width: 355,height: 40, alignment: .center).foregroundColor(.white).background(.darkpurple).cornerRadius(12).shadow(radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,y: 10)
                        }).navigationDestination(isPresented: $isShowingDashboardView, destination: { MyCard()})
                    
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray.opacity(0.1))
                }
            }
    
    func getImgae ()
    {
        image = Card1(card: card).snapshot2()
        image2 = Card2(card: card).snapshot2()
        image3 = Card3(card: card).snapshot2()
        image4 = Card4(card: card).snapshot2()
        image5 = Card5(card: card).snapshot2()
    }
   
}

extension View {
    func snapshot2() -> UIImage {
        let controller = UIHostingController(rootView: self)
        let view = controller.view

        let targetSize = controller.view.intrinsicContentSize
        view?.bounds = CGRect(origin: .zero, size: targetSize)
        view?.backgroundColor = .clear

        let renderer = UIGraphicsImageRenderer(size: targetSize)

        return renderer.image { _ in
            view?.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
}

