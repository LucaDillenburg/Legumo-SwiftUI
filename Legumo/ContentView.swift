//
//  ContentView.swift
//  Legumo
//
//  Created by Luca Dillenburg on 16/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
            VStack (alignment: .leading, spacing: 5){
                Text("Oi, Luca!")
                    .font(.title)
                    .bold()
                Text("Como vamos mudar o mundo hoje?")
                    .font(.headline)
            }
            .padding([.horizontal], 20)
            .padding([.vertical], 20)
            .padding(.top, 40)
            .foregroundColor(.white)
            
            ScrollView() {
                VStack(alignment: .leading, spacing: 10) {
                    RestaurantSection(restaurantName: "Restaurante Veggie", logoUrl: "https://scontent.fcpq3-1.fna.fbcdn.net/v/t1.6435-9/53137535_2380323245314083_1542951247147958272_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=e9-HuyvMZ28AX8Hdivv&_nc_ht=scontent.fcpq3-1.fna&oh=334be9b1e74fb1f2b09fcc68f571e419&oe=61BA5753", amountStart: 5)
                    
                    RestaurantSection(restaurantName: "Restaurante Veggie", logoUrl: "https://scontent.fcpq3-1.fna.fbcdn.net/v/t1.6435-9/53137535_2380323245314083_1542951247147958272_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=e9-HuyvMZ28AX8Hdivv&_nc_ht=scontent.fcpq3-1.fna&oh=334be9b1e74fb1f2b09fcc68f571e419&oe=61BA5753", amountStart: 5)
                    
                    RestaurantSection(restaurantName: "Restaurante Veggie", logoUrl: "https://scontent.fcpq3-1.fna.fbcdn.net/v/t1.6435-9/53137535_2380323245314083_1542951247147958272_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=e9-HuyvMZ28AX8Hdivv&_nc_ht=scontent.fcpq3-1.fna&oh=334be9b1e74fb1f2b09fcc68f571e419&oe=61BA5753", amountStart: 5)
                }
            }
            .background(.white)
            .cornerRadius(30, corners: [.topLeft, .topRight])
        }
        .background(Rectangle().fill(Color.green))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
