//
//  EditCard.swift
//  businessCards
//
//  Created by Juman Dhaher on 07/06/1445 AH.
//

import SwiftUI

struct EditCard: View {
    @Environment(\.modelContext) private var modelContext
     @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
     @State var card: BusinessCards
    
    var body: some View {
        VStack(spacing: 20) {
               
            
             }
             .padding(20)
             .navigationTitle("Edit Card")
             .toolbar {
                 Button(action: {
                     presentationMode.wrappedValue.dismiss()
                 }, label: {
                     Text("Update")
                 })
             }
    }
}

