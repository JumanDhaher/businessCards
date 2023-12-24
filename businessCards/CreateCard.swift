//
//  CreateCard.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI
import PhotosUI
struct CreateCard: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var selecetedPhoto : PhotosPickerItem?
    @State var selectedPhotoData: Data?
    @State private var showImagePicker = false
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var role: String = ""
    @State private var address: String = ""
    @State private var descriptions: String = ""
    @State private var logo: Data? = nil
    @State private var instagram: String = ""
    @State private var x: String = ""
    @State private var website: String = ""

    var body: some View {
            ScrollView{
                VStack(alignment: .leading, spacing: 15){
                    HStack{
                        Text("Name")
                        Text("*").foregroundColor(.red)
                    }
                        .font(.title2)
                    TextField("Enter your business name", text: $name)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("Email")
                        .font(.title2)
                    TextField("Enter your email", text: $email)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("PhoneNumber")
                        .font(.title2)
                    TextField("Enter your phone number", text: $phoneNumber)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("Role")
                        .font(.title2)
                    TextField("Enter your role", text: $role)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    Text("Address")
                        .font(.title2)
                    TextField("Enter your business address", text: $address)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    Text("Description")
                        .font(.title2)
                    TextField("Enter the description", text: $descriptions)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                                        
                    Text("Instagram")
                        .font(.title2)
                    TextField("Enter the Instagram", text: $instagram)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)

                    Text("X")
                        .font(.title2)
                    TextField("Enter the x", text: $x)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("Website")
                        .font(.title2)
                    TextField("Enter the website", text: $website)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("Logo")
                        .font(.title2)
                    HStack{
                        Image(systemName: "photo")
                            .foregroundColor(Color.white)
                        Button("image") {
                            
                            showImagePicker = true
                            
                        }
                    }
                    .frame(width: 140, height: 45)
                         .background(.darkpurple)
                         .opacity(0.7)
                         .cornerRadius(8)
                         .foregroundColor(.white)
                    
                    Section{
                        if let imageData = selectedPhotoData,
                           let uiImage = UIImage(data: imageData){
                            Image(uiImage: uiImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100,height: 100)
                        }
                        PhotosPicker(selection: $selecetedPhoto, matching: .images, photoLibrary: .shared()){
                            Label("Add image", systemImage: "photo")
                        }
                        
            
//                        if selectedPhotoData != nil{
//                            Button(role: .destructive){
//                                withAnimation{
//                                    selecetedPhoto = nil
//                                    selectedPhotoData = nil
//                                }
//                            }Label:{
//                                Label("Remove Image", systemImage: "xmark")
//                            }
//                        }
                            
                    }
                    
                    NavigationLink {
                     let card = BusinessCards(
                            cardDesginID:1,
                            cardColor: "",
                            name: name, email: email, phoneNumber: phoneNumber, role: role, address: address, descriptions: descriptions,
                            instagram: instagram,x: x,
                            website: website, logo: logo)
                        
                        CardColorPage(card: card)
                    } label: {
                        Text("Next").frame(width: 355,height: 40, alignment: .center).foregroundColor(.white).background(.darkpurple).cornerRadius(12).shadow(radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,y: 10)
                    }
                    
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity).background(.back1)
            .navigationTitle("Create Card")
        
        }
    }

#Preview {
    CreateCard()
}
