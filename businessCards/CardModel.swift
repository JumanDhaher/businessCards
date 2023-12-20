
import SwiftUI
import SwiftData

@Model
class BusinessCards {
    var id: UUID
    var cardDesginID : Int
    var cardColor : String
    var name: String
    var email: String
    var phoneNumber: String
    var role: String
    var address: String
    var descriptions: String
    var instagram : String
    var x: String
    var website: String
    var logo: String
    
    
    init(
         cardDesginID: Int,
         cardColor: String,
         name: String,
         email: String,
         phoneNumber: String,
         role: String,
         address: String,
         descriptions: String,
         instagram: String,
         x: String,
         website: String,
         logo: String
    ) {
        self.id = UUID()
        self.cardDesginID = cardDesginID
        self.cardColor = cardColor
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.role = role
        self.address = address
        self.descriptions = descriptions
        self.instagram = instagram
        self.x = x
        self.website = website  
        self.logo = logo
    }
}








