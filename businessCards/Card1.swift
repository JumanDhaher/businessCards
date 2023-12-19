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
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.white)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            Trapezoid()
                .fill(.gray)
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
                .fill(.gray)
                .frame(width: 150, height: 20)
                .padding(.leading, 190)
                .padding(.top, -95)
            
        }
        
        
    }
    
}

#Preview {
    Card1()
}
