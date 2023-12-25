//
//  Card2.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI
struct Triangle3: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 130, y: 0))
           path.addLine(to: CGPoint(x: 10, y: 100))
           path.addLine(to: CGPoint(x: 130, y: 100))
           path.addLine(to: CGPoint(x: 130, y: 0))

        return path
    }
}
struct Trapezoid1: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            
            path.move(to: CGPoint(x: 50, y: 0))
            path.addLine(to: CGPoint(x: 10, y: 30))
            path.addLine(to: CGPoint(x: 10, y: 50))
            path.addLine(to: CGPoint(x: 50, y:20 ))
            path.addLine(to: CGPoint(x: 50, y:0 ))
        }
    }
}
struct Card2: View {
    @State var card: BusinessCards
        var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.white)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            if(card.logo != nil){
                HStack{
                
                    VStack(alignment: .leading){
                   
                    Text(card.name)
                        .font(.title3)
                        .padding(.top, -40)
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
                    
                .font(.system(size: 10))
                .foregroundColor(.black)
                Spacer()
                    Image(uiImage: UIImage(data: card.logo!)!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90,height: 90)
                        .clipShape(Circle())
                        .offset(x: -50, y: -10)
                        //.offset(x: 1, y: -50)
                        
                        
            }
                .frame(width: 300, height: 50)
            }
            Triangle3()
                .fill(.black)
                .frame(width: 200, height: 100)
                .padding(.top, 100)
                .padding(.leading, 280)
            Triangle3()
                .fill(Color(card.cardColor))
                .frame(width: 200, height: 100)
                .padding(.top, 100)
                .padding(.leading, 190)
            Trapezoid1()
                .fill(Color(card.cardColor))
                .frame(width: 140, height: 30)
                .padding(.top, -35)
                .padding(.leading, 384)
            
        }

    }
}


//#Preview {
//    Card2()
//}
