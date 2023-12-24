//
//  EditCard.swift
//  businessCards
//
//  Created by Juman Dhaher on 07/06/1445 AH.
//

import SwiftUI
import PhotosUI
struct EditCard: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //@State var card: BusinessCards
    @State private var showImagePicker = false
    @State var card = BusinessCards(cardDesginID: 1, cardColor: "", name: "", email: "", phoneNumber: "", role: "", address: "", descriptions: "", instagram: "", x: "", website: "", logo: Data())
    @State var selecetedPhoto : PhotosPickerItem?
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 15){
                HStack{
                    Text("Name")
                    Text("*").foregroundColor(.red)
                }
                .font(.title2)
                TextField("Enter your business name", text: $card.name)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                
                Text("Email")
                    .font(.title2)
                TextField("Enter your email", text:  $card.email)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                
                Text("PhoneNumber")
                    .font(.title2)
                TextField("Enter your phone number", text:  $card.phoneNumber)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                
                Text("Role")
                    .font(.title2)
                TextField("Enter your role", text:  $card.role)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                Text("Address")
                    .font(.title2)
                TextField("Enter your business address", text:  $card.address)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                Text("Description")
                    .font(.title2)
                TextField("Enter the description", text:  $card.descriptions)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                
                Text("Instagram")
                    .font(.title2)
                TextField("Enter the Instagram", text:  $card.instagram)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                
                Text("X")
                    .font(.title2)
                TextField("Enter the x", text:  $card.x)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                
                Text("Website")
                    .font(.title2)
                TextField("Enter the website", text:  $card.website)
                    .padding(.leading)
                    .frame(width: 370, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .opacity(0.6)
                
                Text("Brand Logo")
                    .font(.title2)
                Section{
                if let logoData = card.logo,
                let uiImage = UIImage(data: logoData){
                Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
                }
                PhotosPicker(selection: $selecetedPhoto, matching: .images, photoLibrary: .shared()){
                Label("Add image", systemImage: "photo")

                                        //
                                        
                                    }
                                    .frame(width: 140, height: 45)
                                                             .background(.darkpurple)
                                                             .opacity(0.7)
                                                             .cornerRadius(8)
                                                             .foregroundColor(.white)
                   
                                }
                                
                                .task (id: selecetedPhoto){
                                    if let data = try? await selecetedPhoto?.loadTransferable(type: Data.self){
                                        card.logo = data
                                    }
                                }

                
                NavigationLink {
                    EditCardColor(card: card)
                } label: {
                    Text("Next").frame(width: 355,height: 40, alignment: .center).foregroundColor(.white).background(.darkpurple).cornerRadius(12).shadow(radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,y: 10)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity).background(.back1)
        .navigationTitle("Edit Card")
        .toolbar {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Update")
            })
        }
    }
}
