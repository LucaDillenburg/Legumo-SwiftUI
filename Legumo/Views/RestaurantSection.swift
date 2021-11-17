//
//  RestaurantSection.swift
//  Legumo
//
//  Created by Luca Dillenburg on 16/11/21.
//

import SwiftUI

struct RestaurantSection: View {
    var restaurantName: String
    var logoUrl: String
    var amountStart: Int
    
    var body: some View {
        VStack {
            HStack {
                Image(uiImage: logoUrl.load())
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .overlay(Circle().stroke(.gray, lineWidth: 1))
                
                VStack(alignment: .leading) {
                    Text(restaurantName)
                        .font(.title3)
                        .bold()

                    Text("\(amountStart) estrelas")
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
                
                Text("Ver mais")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.gray)
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    MenuItemCard(name: "Hamburguer de Carne de Soja", imageUrl: "https://s2.glbimg.com/SMJqmqMEbiE2z7qm0nEIQBY-Sqg=/e.glbimg.com/og/ed/f/original/2019/02/05/haburguer-veggie.jpg", price: "R$ 22,00")

                    MenuItemCard(name: "Macarrão de Cogumelo", imageUrl: "https://thumbs.web.sapo.io/?W=2100&H=0&png=1&delay_optim=1&epic=ZjQyoB7PVJNT/SqsG2mhTs+b8rx1s6qu32FOMkShACtpnUZTa6wU6DjN9J+hBxlV4V8I/jSy9Xh57Zd6Gn8j+MMCr3mvvzPMEP+PgPvnNMwzusA=", price: "R$ 25,00")

                    MenuItemCard(name: "Arrow com Batata", imageUrl: "https://www.comidanamesa.com.br/wp-content/uploads/2020/12/Arroz-vegetariano.jpg", price: "R$ 15,00")

                    MenuItemCard(name: "Salada de Verduras", imageUrl: "https://img.itdg.com.br/tdg/images/blog/uploads/2019/06/prato-vegetariano-equilibrado.jpg", price: "R$ 14,90")
                }
            }
        }
        .background(.white)
    }
}

struct RestaurantSection_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            RestaurantSection(restaurantName: "Restaurante Veggie", logoUrl: "https://scontent.fcpq3-1.fna.fbcdn.net/v/t1.6435-9/53137535_2380323245314083_1542951247147958272_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=e9-HuyvMZ28AX8Hdivv&_nc_ht=scontent.fcpq3-1.fna&oh=334be9b1e74fb1f2b09fcc68f571e419&oe=61BA5753", amountStart: 5)
            Spacer()
        }.background(.green)
    }
}
