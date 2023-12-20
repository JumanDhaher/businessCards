//
//  cardColorPage.swift
//  businessCards
//
//  Created by shomokh aldosari on 07/06/1445 AH.
//

import SwiftUI

struct cardColorPage: View {
    @State private var selectedCard: Int = 1
    @State private var colorSelect: Color = .red
    let colorPalet = [Color.red, Color.blue, Color.green]
    var body: some View {
            NavigationView {
                VStack {
                    Text("Select Color")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(colorPalet, id: \.self) { color in
                                Rectangle()
                                    .fill(color)
                                    .frame(width: 69, height: 49)
                                    .cornerRadius(8)
                                    .onTapGesture {
                                        self.colorSelect = color
                                    }
                                    .frame(alignment: .center)
                            }
                        }
                    }

                    if selectedCard == 1 {
                        Card1(colorSelect: $colorSelect)
                            .frame(width: 343, height: 200)
                            .padding()
                    } else if selectedCard == 2 {
                        Card2(colorSelect: $colorSelect)
                            .frame(width: 343, height: 200)
                            .padding()
                    } else if selectedCard == 3 {
                        Card3(colorSelect: $colorSelect)
                    } else if selectedCard == 4 {
                        Card4(colorSelect: $colorSelect)
                    } else if selectedCard == 5 {
                        Card5(colorSelect: $colorSelect)
                    }

                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1..<6) { cardNumber in
                                RoundedRectangle(cornerRadius: 8)
                               
                                    .fill(Color.gray)
                                    .frame(width: 88, height: 52)
                                    .onTapGesture {
                                        selectedCard = cardNumber
                                    }
                            }
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray.opacity(0.1))
                .navigationTitle("Card")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
}

#Preview {
    cardColorPage()
}
