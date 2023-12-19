//
//  CreateCard.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct CreateCard: View {
    @State private var info: [CardInformation] = []
    @State private var showImagePicker = false
    
    @State var Name: String = ""
    @State var Email: String = ""
    @State var PhoneNumber: String = ""
    @State var Role: String = ""
    @State var Address: String = ""
    @State var Description: String = ""
    @State var SocialMedia: String = ""
    @State var Logo: String = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 15){
                    Text("Name")
                        .font(.title2)
                    TextField("Enter your business name", text: $Name)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("Email")
                        .font(.title2)
                    TextField("Enter your email", text: $Email)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("PhoneNumber")
                        .font(.title2)
                    TextField("Enter your phone number", text: $PhoneNumber)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    Text("Role")
                        .font(.title2)
                    TextField("Enter your role", text: $Role)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    Text("Address")
                        .font(.title2)
                    TextField("Enter your business address", text: $Address)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    Text("Description")
                        .font(.title2)
                    TextField("Enter the description", text: $Description)
                        .padding(.leading)
                        .frame(width: 370, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 6.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        .opacity(0.6)
                    
                    HStack {
                        Text("SocialMedia")
                            .font(.title2)
                        Spacer()
                        Picker("SocialMedia", selection: $SocialMedia) {
                            Text("Instagram").tag("Instagram")
                            Text("Snapchat").tag("Snapchat")
                            Text("x").tag("x")
                            Text("LinkedIn").tag("LinkedIn")
                            Text("Web Site").tag("Website")
                        }
                        .accentColor(.darkpurple)
                    }
                    .padding(.vertical, 8)
                    
                    Text("Brand Logo")
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
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity).background(.back1)
            
            .navigationTitle("Create Card")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
        }
    }
}
#Preview {
    CreateCard()
}
