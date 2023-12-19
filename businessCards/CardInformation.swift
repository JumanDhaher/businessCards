//
//  CardInformation.swift
//  businessCards
//
//  Created by shomokh aldosari on 06/06/1445 AH.
//

import Foundation
struct CardInformation: Identifiable {
    var id: UUID = UUID()
    var Name: String
    var Email: String
    var PhoneNumber: String
    var Role: String
    var Address: String
    var Description: String
    var SocialMedia: String
    var Logo: String
   
}
