//
//  Splash.swift
//  businessCards
//
//  Created by shomokh aldosari on 13/06/1445 AH.
//

import SwiftUI

struct Splash: View {
    @State private var isActive = false
    @State private var size = 0.3
    @State private var opacity = 0.3
    var body: some View {
        ZStack {
            if self.isActive {
               MyCard()
                
            } else {
                Color("darkpurple")
                    .ignoresSafeArea()
                
            Image("main")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            
            Image("splashImage")
                .resizable()
                .frame(width: 180, height: 180)
                .scaleEffect(size)
                .opacity(opacity)
                .position(x: UIScreen.main.bounds.width / 1, y: UIScreen.main.bounds.height / 2.2)
                .onAppear {
                    withAnimation(.easeIn(duration: 0.9)) {
                        self.size = 1.8
                        self.opacity = 1.6
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
        }
        
        
        
        
    }
    }
}

#Preview {
    Splash()
}
