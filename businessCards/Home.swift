//
//  Home.swift
//  businessCards
//
//  Created by shomokh aldosari on 12/06/1445 AH.
//

//import SwiftUI
//
//class shareVM: ObservableObject{
//    @Published var items : [Any] = []
//
//}
//struct Home : View {
//    
//    @StateObject var vm = shareVM()
//    @State var sheet = false
//    
//    var body: some View{
//        
//        VStack{
//            
//            Button(action: {
//                
//                vm.items.removeAll()
//                vm.items.append(UIImage(named: "xapp")!)
//                
//                sheet.toggle()
//                
//            }, label: {
//                Text ("Share")
//                    .fontWeight(.heavy)
//            })
//        }
//        .sheet(isPresented: $sheet, content: {
//            ShareSheet(items: vm.items)
//        })
//    }
//}
//
//
//
//
//struct ShareSheet: UIViewControllerRepresentable {
//    
//    var items : [Any]
//    func makeUIViewController(context: Context) -> UIActivityViewController {
//        
//        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
//        return controller
//    }
//    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
//    }
//        
//    }
//
//#Preview {
//    Home()
//}
