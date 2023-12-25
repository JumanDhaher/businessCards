//
//  Card3.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct Card3: View {
    @State var card: BusinessCards

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.cardcolor)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            
            
            Rectangle()
                .fill(Color(card.cardColor))
                .frame(width: 180, height: 200)
                .padding(.leading, 160)
            
            if(card.logo != nil){
                HStack{
                
                    VStack(alignment: .leading){
                   
                    Text(card.name )
                        //.font(.title3)
                            .font(.system(size: 15))
                            .bold()
                        //.lineLimit(2)
                        Text(card.role)
                            .font(.system(size: 15))
                                

                    Text(card.descriptions)
                            
                        if(card.email != "" )
                        {
                            HStack{
                                Image(systemName:  "envelope")
                                    .resizable()
                                    .frame(width: 9, height: 9)
                                Text(card.email )
                                
                            }}
                        
                        if(card.phoneNumber != "" )
                        {
                            HStack{
                                Image(systemName:  "phone")
                                    .resizable()
                                    .frame(width: 9, height: 9)
                                Text(card.phoneNumber )
                                
                            }
                            .padding(.top, -6)}
                        if(card.address != "" )
                        {
                            HStack{
                                Image(systemName:  "location")
                                    .resizable()
                                    .frame(width: 9, height: 9)
                                Text(card.address )
                                
                            }
                            .padding(.top, -6)
                        }
                        if(card.instagram != "" )
                        {
                            HStack{
                                Image("instagram")
                                    .resizable()
                                    .frame(width: 9, height: 9)
                                Text(card.instagram)
                                
                            }
                            .padding(.top, -6)}
                        if(card.x != "" )
                        {
                            HStack{
                                Image("xapp")
                                    .resizable()
                                    .frame(width: 9, height: 9)
                                Text(card.x)
                                
                            }
                            .padding(.top, -6)
                            
                        }
                        
                    
                        
                    
                }
                    
                .font(.system(size: 10))
                .foregroundColor(.black)
                Spacer()
                    if(card.logo != nil && !card.logo!.isEmpty )
                    {
                        Image(uiImage: UIImage(data: card.logo!)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90,height: 90)
                            .clipShape(Circle())
                            .offset(x: -19, y: 5)
                    }
                        
            }
                .frame(width: 300, height: 50)
            }

            
        }
    }
}
