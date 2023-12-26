//
//  businessCardsApp.swift
//  businessCards
//
//  Created by Juman Dhaher on 05/06/1445 AH.
//

import SwiftUI

@main
struct ContentView: App {

    var body: some Scene {
        WindowGroup {
        NavigationStack {
           Splash()
          }
        }.modelContainer(for: [BusinessCards.self])
    }
}

