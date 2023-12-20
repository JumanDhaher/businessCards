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
    
    @Binding var colorSelect: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(Color.white)
                //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 343, height: 200)
                .padding()
            
            Triangle3()
                .fill(.black)
                .frame(width: 200, height: 100)
                .padding(.top, 100)
                .padding(.leading, 280)
            Triangle3()
                .fill(colorSelect)
                .frame(width: 200, height: 100)
                .padding(.top, 100)
                .padding(.leading, 170)
            Trapezoid1()
                .fill(colorSelect)
                .frame(width: 290, height: 30)
                .padding(.top, -40)
                .padding(.leading, 530)
            
        }

    }
}

//#Preview {
//    Card2()
//}
