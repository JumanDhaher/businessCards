//
//  Card5.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct Card5: View {
    @State var card: BusinessCards
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 0)
                .fill(.gray)
                .fill(Color(card.cardColor))
            //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            if(card.logo != nil){
            HStack{
                Image(uiImage: UIImage(data: card.logo!)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90,height: 90)
                    .clipShape(Circle())
                    .offset(x: -5, y: 5)
                Divider()
                    .frame(width: 3 , height: 160)
                    .overlay(.white)
                VStack(alignment: .leading){
               
                Text(card.name + "\n")
                    .font(.title3)
                    .lineLimit(2)
                    Text(card.role)
                        .font(.system(size: 15))
                            

                Text(card.descriptions)
                        
                        
                    HStack{
                        Image(systemName:  "envelope")
                            .resizable()
                            .frame(width: 9, height: 9)
                        Text(card.email )
                        
                    }
                    
               
                    HStack{
                        Image(systemName:  "phone")
                            .resizable()
                            .frame(width: 9, height: 9)
                        Text(card.phoneNumber )
                        
                    }
                    .padding(.top, -6)
                    HStack{
                        Image(systemName:  "location")
                            .resizable()
                            .frame(width: 9, height: 9)
                        Text(card.address )
                       
                    }
                    .padding(.top, -6)
                        
                    
                    HStack{
                        Image("instagram")
                            .resizable()
                            .frame(width: 9, height: 9)
                        Text(card.instagram)
                        
                    }
                    .padding(.top, -6)
                    HStack{
                        Image("xapp")
                            .resizable()
                            .frame(width: 9, height: 9)
                        Text(card.x)
                        
                    }
                    .padding(.top, -6)
                    
                
                    
                
                    
                
            }
                .offset(x:20)
            .font(.system(size: 10))
            .foregroundColor(.white)

            }
            .frame(width: 300, height: 50)
        }
                
           
            
        }
    }
}



