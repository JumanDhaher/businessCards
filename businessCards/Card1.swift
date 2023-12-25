//
//  Card1.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 150, y: -50))
           path.addLine(to: CGPoint(x: 70, y: 100))
           path.addLine(to: CGPoint(x: 150, y: 100))
           path.addLine(to: CGPoint(x: 150, y: 0))

        return path
    }
}
struct Triangle2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 50, y: 0))
           path.addLine(to: CGPoint(x: 0, y: 0))
           path.addLine(to: CGPoint(x: 0, y: 100))
           path.addLine(to: CGPoint(x: 50, y: 0))

        return path
    }
}
struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            let horizontalOffest: CGFloat = rect.width * 0.1
            path.move(to: CGPoint(x: rect.minX + horizontalOffest, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - horizontalOffest, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
}
struct Card1: View {
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
                        .padding(.top , -20)
                        .offset(x:12)
                        Text(card.role)
                            .font(.system(size: 15))
                                .offset(x:14)

                    Text(card.descriptions)
                            .offset(x:12)
                            
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
                        .offset(x: -19, y: 5)
                        
                        
            }
                .frame(width: 300, height: 50)
            }
            Trapezoid()
                .fill(Color(card.cardColor))
                .frame(width: 260, height: 30)
                .padding(.top, 150)
                .padding(.leading, 50)
            Triangle()
                .fill(.black)
                .frame(width: 300, height: 200)
                .padding(.top, 198)
                .padding(.leading, 340)
            Triangle2()
                .fill(.black)
                .frame(width: 200, height: 100)
                .padding(.leading, -140)
                .padding(.top, -100)
            Rectangle()
                .fill(Color(card.cardColor))
                .frame(width: 150, height: 20)
                .padding(.leading, 190)
                .padding(.top, -95)
            

            
        }


        
    }
    
}
